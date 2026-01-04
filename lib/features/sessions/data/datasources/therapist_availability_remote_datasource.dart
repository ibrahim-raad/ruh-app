import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/core/errors/handle_dio_error.dart';
import 'package:ruh/features/sessions/domain/entities/therapist_availability_calendar.dart';

@lazySingleton
class TherapistAvailabilityRemoteDataSource {
  final Dio _dio;

  const TherapistAvailabilityRemoteDataSource(this._dio);

  Future<TherapistAvailabilityCalendarOutput> getCalendar({
    required String therapistId,
  }) async {
    try {
      final response = await _dio.get(
        '/therapists-availability/calendar',
        queryParameters: {'therapist_id': therapistId},
      );
      return TherapistAvailabilityCalendarOutput.fromJson(
        Map<String, dynamic>.from(response.data as Map),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }
}
