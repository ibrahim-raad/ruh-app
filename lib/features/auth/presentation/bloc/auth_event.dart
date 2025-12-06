import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/dtos/login_dto.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login(LoginDto loginDto) = _Login;

  const factory AuthEvent.checkAuthStatus() = _CheckAuthStatus;

  const factory AuthEvent.logout() = _Logout;
}
