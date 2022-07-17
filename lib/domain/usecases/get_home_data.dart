import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_root/response_home_data.dart';
import 'package:oceanview/core/usecases/usecase.dart';
import 'package:oceanview/domain/repositories/home_data_repository.dart';

class GetHomeData implements NoParamsUseCase<HomeData> {
  final HomeDataRepository repository;

  GetHomeData({required this.repository});

  @override
  Future<Either<Failure, HomeData>> call() async {
    return await repository.getMainData();
  }
}
