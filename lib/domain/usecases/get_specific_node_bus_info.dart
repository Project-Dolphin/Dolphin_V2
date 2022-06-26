// ignore_for_file: camel_case_types

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:oceanview/core/config/enum/bus_stop_enum.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_businfo_specific/response_businfo_specific_data_dto.dart';
import 'package:oceanview/core/usecases/usecase.dart';
import 'package:oceanview/domain/repositories/city_bus_repository.dart';

class GetSpecificNodeBusInfo
    implements UseCase<NodeInfoData, SpecificNodeParam> {
  final CityBusRepository repository;

  GetSpecificNodeBusInfo({required this.repository});

  @override
  Future<Either<Failure, NodeInfoData>> call(
    SpecificNodeParam params,
  ) async {
    return await repository.getSpecificNodeBusInfo(
      params.busStop.paramName,
      params.busNumber,
    );
  }
}

class SpecificNodeParam extends Equatable {
  final BUS_STOP busStop;
  final int busNumber;

  const SpecificNodeParam({required this.busStop, required this.busNumber});

  SpecificNodeParam copyWith({
    BUS_STOP? busStop,
    int? busNumber,
  }) {
    return SpecificNodeParam(
      busStop: busStop ?? this.busStop,
      busNumber: busNumber ?? this.busNumber,
    );
  }

  @override
  List<Object?> get props => [];
}
