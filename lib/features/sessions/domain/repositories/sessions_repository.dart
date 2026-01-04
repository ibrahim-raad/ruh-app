import 'package:fpdart/fpdart.dart';
import 'package:ruh/core/errors/failures.dart';
import 'package:ruh/core/network/models/paginated_response.dart';
import 'package:ruh/core/network/models/pagination_query_params_dto.dart';
import 'package:ruh/features/sessions/domain/dtos/create_session_dto.dart';
import 'package:ruh/features/sessions/domain/entities/therapist_availability_calendar.dart';
import '../entities/session.dart';

abstract class SessionsRepository {
  Future<Either<Failure, PaginatedResponse<Session>>> getSessions(
    PaginationQueryParamsDto dto,
  );

  Future<Either<Failure, TherapistAvailabilityCalendarOutput>>
  getTherapistAvailabilityCalendar(String therapistId);

  Future<Either<Failure, Session>> createSession(CreateSessionDto dto);
}
