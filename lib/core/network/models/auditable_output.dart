abstract class AuditableOutput {
  String get id;
  int get version;
  DateTime get createdAt;
  DateTime get updatedAt;
  DateTime? get deletedAt;
}
