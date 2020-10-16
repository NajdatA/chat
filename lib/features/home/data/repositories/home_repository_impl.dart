import 'package:chat/core/data/base_local_data_source.dart';
import 'package:chat/core/data/base_repository.dart';
import 'package:chat/core/entites/paginate_list.dart';
import 'package:chat/core/error/failures.dart';
import 'package:chat/core/network/network_info.dart';
import 'package:chat/features/home/data/datasources/home_remote_data_source.dart';
import 'package:chat/features/home/data/models/consultation_info_model.dart';
import 'package:chat/features/home/domain/entities/consultation_info.dart';
import 'package:chat/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class HomeRepositoryImpl extends BaseRepositoryImpl implements HomeRepository {
  HomeRemoteDataSource remoteDataSource;
  NetworkInfo networkInfo;

  HomeRepositoryImpl({
    @required this.remoteDataSource,
    @required this.networkInfo,
  }) : super(networkInfo: networkInfo);

  @override
  Future<Either<Failure, List<ConsultationInfo>>> getConsultations() {
    return requestWithToken((String token) async {
      final remoteConsultations = await remoteDataSource.getConsultationInfo(token);
//      final List<ConsultationInfo> list = [];
//      for (ConsultationInfoModel consultationsModel in remoteConsultations.data) {
//        list.add(
//          ConsultationInfo(
//            id: consultationsModel.id,
//            nickname: consultationsModel.nickname,
//          ),
//        );
//      }
//      return Right(
//        PaginateList(
//          data: list,
//          page: remoteConsultations.page,
//        ),
//      );
      return Right(remoteConsultations);
    });
  }
}