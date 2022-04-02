import 'package:dartz/dartz.dart';

import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_notices/response_notice_data_dto.dart';
import 'package:oceanview/core/usecases/usecase.dart';
import 'package:oceanview/domain/repositories/home_data_repository.dart';

class GetNoticeList implements NoParamsUseCase<List<NoticeData>> {
  final HomeDataRepository repository;

  GetNoticeList({required this.repository});

  @override
  Future<Either<Failure, List<NoticeData>>> call() async {
    return await repository.getNotices();
  }
}
