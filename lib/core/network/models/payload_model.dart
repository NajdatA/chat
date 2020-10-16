library payload_model;

import 'package:chat/core/network/models/private_consultations_model.dart';
import 'package:chat/features/home/data/models/consultation_info_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payload_model.g.dart';

@JsonSerializable()
class PayloadModel<T> {
  static final String className = 'PayloadModel';

  @JsonKey(
    name: 'Private_Consultations',
    fromJson: _dataFromJson,
  )
  final PrivateConsultationsModel<T> data;

  PayloadModel(this.data);

  factory PayloadModel.fromJson(Map<String, dynamic> json) =>
      _$PayloadModelFromJson(json);
}

T _dataFromJson<T>(Map<String, dynamic> data) {
  print('T2 is ${T.toString()}');
  if (T.toString() == ConsultationInfoModel.payloadName) {
    print('dddd');
    final x = PayloadModel<ConsultationInfoModel>.fromJson(data) as T;
    print('kokoko');
    return x;
  } else if (T.toString() == ConsultationInfoModel.className) {
    print('dddd');
    final x = ConsultationInfoModel.fromJson(data) as T;
    print('kokoko');
    return x;
  } else if (T.toString() == ConsultationInfoModel.paginateName) {
    print('dddd');
    final x =
        PrivateConsultationsModel<ConsultationInfoModel>.fromJson(data) as T;
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
