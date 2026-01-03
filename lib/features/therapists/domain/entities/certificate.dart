import 'package:freezed_annotation/freezed_annotation.dart';

part 'certificate.freezed.dart';
part 'certificate.g.dart';

@freezed
abstract class Certificate with _$Certificate {
  const factory Certificate({
    required String id,
    required String title,
    required String issuer,
    @JsonKey(name: 'issued_date') required DateTime issuedDate,
    String? description,
    @JsonKey(name: 'specialization_id') String? specializationId,
    @JsonKey(name: 'file_url') String? fileUrl,
  }) = _Certificate;

  factory Certificate.fromJson(Map<String, dynamic> json) =>
      _$CertificateFromJson(json);
}
