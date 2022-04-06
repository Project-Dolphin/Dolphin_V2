import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_holiday/response_holiday_data_dto.dart';
import 'package:oceanview/core/usecases/usecase.dart';
import 'package:oceanview/domain/repositories/event_repository.dart';

class GetHolidayEvent implements NoParamsUseCase<List<HolidayData>> {
  final EventRepository repository;

  GetHolidayEvent({required this.repository});

  @override
  Future<Either<Failure, List<HolidayData>>> call() async {
    return await repository.getHolidayEvent();
  }
}
