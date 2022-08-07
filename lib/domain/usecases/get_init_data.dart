import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_root/response_init_data_dto.dart';
import 'package:oceanview/core/usecases/usecase.dart';
import 'package:oceanview/domain/repositories/home_data_repository.dart';

class GetInitData implements NoParamsUseCase<InitData> {
  final HomeDataRepository repository;

  GetInitData({required this.repository});

  @override
  Future<Either<Failure, InitData>> call() async {
    return await repository.getInitData();
  }
}
