import 'package:freezed_annotation/freezed_annotation.dart';

part 'specialization.freezed.dart';
part 'specialization.g.dart';

@freezed
abstract class Specialization with _$Specialization {
  const factory Specialization({
    required String id,
    required String name,
    String? description,
  }) = _Specialization;

  factory Specialization.fromJson(Map<String, dynamic> json) =>
      _$SpecializationFromJson(json);
}
