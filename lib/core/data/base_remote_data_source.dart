//import 'dart:convert';
//
//import 'package:dio/dio.dart';
//import 'package:flutter/material.dart';
//import 'package:wassuna/core/error/exceptions.dart';
//import 'package:wassuna/core/network/models/base_list_response_model.dart';
//import 'package:wassuna/core/network/models/base_response_model.dart';
//import 'package:wassuna/core/util/constants.dart';
//
//abstract class BaseRemoteDataSource {
//  @protected
//  Future<T> performPostRequest<T>(String endpoint,
//      FormData data,);
//
//  @protected
//  Future<List<T>> performGetListRequest<T>(String endpoint,
//      String token,
//      String language,);
//}
//
//class BaseRemoteDataSourceImpl extends BaseRemoteDataSource {
//  final Dio dio;
//
//  BaseRemoteDataSourceImpl({@required this.dio});
//
//  @override
//  Future<List<T>> performGetListRequest<T>(String endpoint, String token,
//      String language) async {
//    print('performGetRequest');
//    try {
//      final response = await dio.get(
//        endpoint,
//        options: GetOptions.getOptionsWithToken(token, language: language),
//      );
//      if (response.statusCode == 200) {
//        final BaseListResponseModel<T> finalResponse =
//        BaseListResponseModel<T>.fromJson(json.decode(response.data));
//        if (finalResponse.data != null && finalResponse.data.isNotEmpty) {
//          print('data is not null');
//          return finalResponse.data;
//        } else {
//          print('e is error');
//          throw ServerException();
//        }
//      } else {
//        print('e is error');
//        throw ServerException();
//      }
//    } catch (e) {
//      print('e is $e');
//      throw ServerException();
//    }
//  }
//
//  @override
//  Future<T> performPostRequest<T>(String endpoint, FormData data,
//      {String token, String language = ''}) async {
//    try {
//      final response = await dio.post(
//        endpoint,
//        data: data,
//        options: GetOptions.getOptionsWithToken(token, language: language),
//      );
//      if (response.statusCode == 200) {
//        final BaseResponseModel<T> finalResponse =
//        BaseResponseModel<T>.fromJson(json.decode(response.data));
//        if (finalResponse.data != null) {
//          return finalResponse.data;
//        } else {
//          print('e is error');
//          throw ServerException();
//        }
//      } else {
//        print('e is error');
//        throw ServerException();
//      }
//    } catch (e) {
//      print('e is $e');
//      throw ServerException();
//    }
//  }
//}
