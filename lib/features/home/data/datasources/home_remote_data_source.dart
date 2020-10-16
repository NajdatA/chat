import 'dart:convert';

import 'package:chat/core/entites/paginate_list.dart';
import 'package:chat/core/error/exceptions.dart';
import 'package:chat/core/network/models/base_response_model.dart';
import 'package:chat/core/network/models/paginate_response_model.dart';
import 'package:chat/core/network/models/private_consultations_model.dart';
import 'package:chat/core/util/constants.dart';
import 'package:chat/features/home/data/models/consultation_info_model.dart';
import 'package:dio/dio.dart';

abstract class HomeRemoteDataSource {
  Future<List<ConsultationInfoModel>> getConsultationInfo(String token);
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final Dio dio;

  HomeRemoteDataSourceImpl({this.dio});

  @override
  Future<List<ConsultationInfoModel>> getConsultationInfo(String token) async {
    try {
      final response = await dio.get(
        Endpoints.GET_CONSULTATIONS,
        options: GetOptions.getOptionsWithToken(token),
      );
      if (response.statusCode == 200) {
        final BaseResponseModel<ConsultationInfoModel> finalResponse =
        BaseResponseModel<ConsultationInfoModel>.fromJson(
            json.decode(response.data));
        if (finalResponse.payload != null) {
          print('final ${finalResponse.payload.data.private}');
          return finalResponse.payload.data.private;
        } else {
          print('e is error');
          throw ServerException();
        }
      } else {
        print('e is error');
        throw ServerException();
      }
    } catch (e) {
      print('e is $e');
      throw ServerException();
    }
  }
}