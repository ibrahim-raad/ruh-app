#!/bin/bash

if [ -z "$1" ]; then
  echo "Please provide a feature name."
  echo "Usage: ./scripts/create_feature.sh auth"
  exit 1
fi

NAME=$1
BASE_DIR="lib/features/$NAME"

# Create Directories
mkdir -p "$BASE_DIR/data/datasources"
mkdir -p "$BASE_DIR/data/models"
mkdir -p "$BASE_DIR/data/repositories"
mkdir -p "$BASE_DIR/domain/dtos"
mkdir -p "$BASE_DIR/domain/entities"
mkdir -p "$BASE_DIR/domain/repositories"
mkdir -p "$BASE_DIR/domain/usecases"
mkdir -p "$BASE_DIR/presentation/bloc"
mkdir -p "$BASE_DIR/presentation/pages"
mkdir -p "$BASE_DIR/presentation/widgets"

# Create Placeholder Files (Optional but helpful)
# Capitalize first letter for class names
CLASS_NAME=$(echo "$NAME" | awk '{print toupper(substr($0,1,1)) substr($0,2)}')

# --- Domain Layer ---
# Entity
cat <<EOF > "$BASE_DIR/domain/entities/${NAME}.dart"
import 'package:freezed_annotation/freezed_annotation.dart';

part '${NAME}.freezed.dart';
part '${NAME}.g.dart';

@freezed
class ${CLASS_NAME} with _\$${CLASS_NAME} {
  const factory ${CLASS_NAME}({
    required String id,
  }) = _${CLASS_NAME};

  factory ${CLASS_NAME}.fromJson(Map<String, dynamic> json) => _\$${CLASS_NAME}FromJson(json);
}
EOF

# Repository Interface
cat <<EOF > "$BASE_DIR/domain/repositories/${NAME}_repository.dart"
import 'package:fpdart/fpdart.dart';
import '../../../../core/errors/failures.dart';
import '../entities/${NAME}.dart';

abstract class ${CLASS_NAME}Repository {
  Future<Either<Failure, ${CLASS_NAME}>> get${CLASS_NAME}(String id);
}
EOF

# --- Data Layer ---
# Remote Data Source
cat <<EOF > "$BASE_DIR/data/datasources/${NAME}_remote_datasource.dart"
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import '../../../../core/network/base_api.dart';
import '../../domain/entities/${NAME}.dart';

@lazySingleton
class ${CLASS_NAME}RemoteDataSource extends BaseApi<${CLASS_NAME}> {
  ${CLASS_NAME}RemoteDataSource(Dio dio) : super(dio, '/${NAME}s', ${CLASS_NAME}.fromJson);
}
EOF

# Repository Implementation
cat <<EOF > "$BASE_DIR/data/repositories/${NAME}_repository_impl.dart"
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/${NAME}.dart';
import '../../domain/repositories/${NAME}_repository.dart';
import '../datasources/${NAME}_remote_datasource.dart';

@LazySingleton(as: ${CLASS_NAME}Repository)
class ${CLASS_NAME}RepositoryImpl implements ${CLASS_NAME}Repository {
  final ${CLASS_NAME}RemoteDataSource _remoteDataSource;

  ${CLASS_NAME}RepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, ${CLASS_NAME}>> get${CLASS_NAME}(String id) async {
    try {
      final result = await _remoteDataSource.getById(id);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
EOF

# --- Presentation Layer ---
# Bloc
cat <<EOF > "$BASE_DIR/presentation/bloc/${NAME}_event.dart"
import 'package:freezed_annotation/freezed_annotation.dart';

part '${NAME}_event.freezed.dart';

@freezed
class ${CLASS_NAME}Event with _\$${CLASS_NAME}Event {
  const factory ${CLASS_NAME}Event.started() = _Started;
}
EOF

cat <<EOF > "$BASE_DIR/presentation/bloc/${NAME}_state.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/${NAME}.dart';

part '${NAME}_state.freezed.dart';

@freezed
class ${CLASS_NAME}State with _\$${CLASS_NAME}State {
  const factory ${CLASS_NAME}State.initial() = _Initial;
  const factory ${CLASS_NAME}State.loading() = _Loading;
  const factory ${CLASS_NAME}State.success(${CLASS_NAME} data) = _Success;
  const factory ${CLASS_NAME}State.failure(Failure failure) = _Failure;
}
EOF

cat <<EOF > "$BASE_DIR/presentation/bloc/${NAME}_bloc.dart"
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '${NAME}_event.dart';
import '${NAME}_state.dart';
import '../../domain/repositories/${NAME}_repository.dart';

@injectable
class ${CLASS_NAME}Bloc extends Bloc<${CLASS_NAME}Event, ${CLASS_NAME}State> {
  final ${CLASS_NAME}Repository _repository;

  ${CLASS_NAME}Bloc(this._repository) : super(const ${CLASS_NAME}State.initial()) {
    on<${CLASS_NAME}Event>((event, emit) async {
      // TODO: implement event handler
    });
  }
}
EOF

# Page
cat <<EOF > "$BASE_DIR/presentation/pages/${NAME}_page.dart"
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/${NAME}_bloc.dart';
import '../bloc/${NAME}_event.dart';
import '../bloc/${NAME}_state.dart';
import '../../../../core/di/injection.dart';

class ${CLASS_NAME}Page extends StatelessWidget {
  const ${CLASS_NAME}Page({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<${CLASS_NAME}Bloc>()..add(const ${CLASS_NAME}Event.started()),
      child: Scaffold(
        appBar: AppBar(title: const Text('${CLASS_NAME}')),
        body: BlocBuilder<${CLASS_NAME}Bloc, ${CLASS_NAME}State>(
          builder: (context, state) {
            return state.map(
              initial: (_) => const SizedBox(),
              loading: (_) => const Center(child: CircularProgressIndicator()),
              success: (data) => Center(child: Text('ID: \${data.data.id}')),
              failure: (f) => Center(child: Text('Error: \${f.failure.message}')),
            );
          },
        ),
      ),
    );
  }
}
EOF

echo "✅ Feature '$NAME' created successfully!"
echo "📁 Structure located at: $BASE_DIR"

