import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/exceptions.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_businfo/response_businfo_data_dto.dart';
import 'package:oceanview/core/network/response/endpoint_diet_dorm_today/response_diet_dorm_data_dto.dart';
import 'package:oceanview/core/network/response/endpoint_diet_dorm_today/response_diet_dorm_dto.dart';
import 'package:oceanview/data/datasources/diet/diet_local_datasource.dart';
import 'package:oceanview/data/datasources/diet/diet_remote_datasource.dart';
import 'package:oceanview/domain/repositories/diet_repository.dart';

class DietRepositoryImpl implements DietRepository {
  final DietRemoteDataSource remoteDataSource;
  final DietLocalDataSource localDataSource;

  DietRepositoryImpl(
      {required this.remoteDataSource, required this.localDataSource});

  @override
  Future<Either<Failure, DormData>> getDormDiet() async {
    try {
      final DormData _specificNodeBusInfo =
          await remoteDataSource.getDormDiet();
      try {
        /*
        TODO:
        지금 focusing 된 State가 아니면 local에 caching을 할지 고민
        Bloc에서 5개 state 관리가 나을지도 모름
         */
        await localDataSource.getDormDiet();

        return Right(_specificNodeBusInfo);
      } on CacheException {
        return Left(CacheFailure());
      }
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
