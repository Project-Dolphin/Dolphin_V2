import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:oceanview/core/config/enum/diet_tab_enum.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_dorm/response_diet_data.dart';
import 'package:oceanview/core/usecases/usecase.dart';
import 'package:oceanview/domain/repositories/diet_repository.dart';

class GetDietData implements UseCase<List<DietData>, DietDataParam> {
  final DietRepository repository;

  GetDietData({required this.repository});

  @override
  Future<Either<Failure, List<DietData>>> call(DietDataParam params) async {
    return await repository.getDietData(
      params.dietTime.param,
      params.dietType ?? '',
    );
  }
}

class DietDataParam extends Equatable {
  final DietTab dietTime;
  final String? dietType;

  const DietDataParam({required this.dietTime, this.dietType});

  DietDataParam copyWith({
    DietTab? dietTime,
    String? dietType,
  }) {
    return DietDataParam(
      dietTime: dietTime ?? this.dietTime,
      dietType: dietType ?? this.dietType,
    );
  }

  @override
  List<Object?> get props => [];
}
