import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_calendar/response_calendar_month_dto.dart';
import 'package:oceanview/core/usecases/usecase.dart';
import 'package:oceanview/domain/repositories/event_repository.dart';

class GetWeekdayEventWithMonth
    implements UseCase<CalendarMonthWrapper, SpecificCalendarParam> {
  final EventRepository repository;

  GetWeekdayEventWithMonth({required this.repository});

  @override
  Future<Either<Failure, CalendarMonthWrapper>> call(
    SpecificCalendarParam params,
  ) async {
    return await repository.getWeekDayEventWithMonth(params.year, params.month);
  }
}

class SpecificCalendarParam extends Equatable {
  final int year;
  final int month;

  const SpecificCalendarParam({required this.year, required this.month});

  SpecificCalendarParam copyWith({
    int? year,
    int? month,
  }) {
    return SpecificCalendarParam(
      year: year ?? this.year,
      month: month ?? this.month,
    );
  }

  @override
  List<Object?> get props => [year, month];
}
