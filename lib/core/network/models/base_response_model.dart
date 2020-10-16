library base_response_model;

import 'package:chat/core/network/models/paginate_response_model.dart';
import 'package:chat/core/network/models/private_consultations_model.dart';
import 'package:chat/features/home/data/models/consultation_info_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_response_model.g.dart';



@JsonSerializable()
class BaseResponseModel<T> {
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'payload', fromJson: _dataFromJson, toJson: _dataToJson, nullable: true)
  final PrivateConsultationsModel<T> data;

  BaseResponseModel({this.status, this.message, this.data});

  factory BaseResponseModel.fromJson(Map<String, dynamic> json) {
    return _$BaseResponseModelFromJson<T>(json);
  }
}



T _dataFromJson<T>(Map<String, dynamic> data) {
  print('T is ${T.toString()}');
  if (T.toString() == ConsultationInfoModel.paginateName) {print('dddd');
    final x = PrivateConsultationsModel<ConsultationInfoModel>.fromJson(data) as T;
    print('kokoko');
    return x;
  }
//  } else if (T.toString() == ContactsModel.className) {
//    return ContactsModel.fromJson(data) as T;
//  } else if (T.toString() == CostModel.className) {
//    if (data != null)
//    return CostModel.fromJson(data) as T;
//    else {
//      print('saasasas');
//      return null;
//    }
//  } else if (T.toString() == DeliveryResponseModel.className) {
//    return DeliveryResponseModel.fromJson(data) as T;
//  } else if (T.toString() == TrackDeliveriesResponseModel.className) {
//    return TrackDeliveriesResponseModel.fromJson(data) as T;
//  } else if (T.toString() == 'Null') {
//    print('Null Data');
//    return null;
//  } else if (T.toString() == NotificationsModel.paginateName) {
//    final x = PaginateResponseModel<NotificationsModel>.fromJson(data) as T;
//    print('after paginate response model');
//    return x;
//  }
  throw Exception('parse error');
}

Map<String, dynamic> _dataToJson<T, S, U>(T input, [S other1, U other2]) =>
    {'data': input};
