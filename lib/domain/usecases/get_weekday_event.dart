import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_calendar/response_calendar_data_dto.dart';
import 'package:oceanview/core/usecases/usecase.dart';
import 'package:oceanview/domain/repositories/event_repository.dart';

class GetWeekdayEvent implements NoParamsUseCase<List<WeekdayData>> {
  final EventRepository repository;

  GetWeekdayEvent({required this.repository});

  @override
  Future<Either<Failure, List<WeekdayData>>> call() async {
    return await repository.getWeekDayEvent();
  }
}
