import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ruh/core/network/models/auditable_output.dart';
import 'package:ruh/features/auth/domain/entities/user.dart';
import 'currency.dart';
import 'specialization.dart';

part 'therapist.freezed.dart';
part 'therapist.g.dart';

@freezed
abstract class TherapistOutput
    with _$TherapistOutput
    implements AuditableOutput {
  const factory TherapistOutput({
    required String id,
    @JsonKey(name: 'version') required int version,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,

    @JsonKey(name: 'user_id') String? userId,
    User? user,
    String? bio,
    @JsonKey(name: 'years_of_experience') int? yearsOfExperience,
    @JsonKey(name: 'rate_per_hour') int? ratePerHour,
    Currency? currency,
    @JsonKey(name: 'currency_id') String? currencyId,
    @Default([]) List<Specialization> specializations,
  }) = _TherapistOutput;

  factory TherapistOutput.fromJson(Map<String, dynamic> json) =>
      _$TherapistOutputFromJson(json);
}
