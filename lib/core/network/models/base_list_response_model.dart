//library base_list_response_model;
//
//import 'package:json_annotation/json_annotation.dart';
//import 'package:wassuna/features/about/data/models/contact_info_model.dart';
//import 'package:wassuna/features/home/data/models/contacts_model.dart';
//import 'package:wassuna/features/home/data/models/regions_model.dart';
//import 'package:wassuna/features/register/data/models/data_model.dart';
//import 'package:wassuna/features/track_delivery/data/models/delivery_response_model.dart';

//part 'base_list_response_model.g.dart';
//
//@JsonSerializable()
//class BaseListResponseModel<T> {
//  @JsonKey(name: 'status')
//  final bool status;
//  @JsonKey(name: 'message')
//  final String message;
//  @JsonKey(name: 'data')
//  @_Converter()
//  final List<T> data;
//
//  BaseListResponseModel({this.status, this.message, this.data});
//
//  factory BaseListResponseModel.fromJson(Map<String, dynamic> json) =>
//      _$BaseListResponseModelFromJson<T>(json);
//}
//
//class _Converter<T> implements JsonConverter<T, Object> {
//  const _Converter();
//
//  @override
//  T fromJson(Object json) {
//    print('t is ${T.toString()}');
//    if (json is Map<String, dynamic> &&
//        T.toString() == ContactsModel.className) {
//      return ContactsModel.fromJson(json) as T;
//    } else if (json is Map<String, dynamic> &&
//        T.toString() == RegionsModel.className) {
//      return RegionsModel.fromJson(json) as T;
//    } else if (T.toString() == DeliveryResponseModel.className) {
//      return DeliveryResponseModel.fromJson(json) as T;
//    } else if (T.toString() == ContactInfoModel.className) {
//      return ContactInfoModel.fromJson(json) as T;
//    } else if (T.toString() == DataModel.className) {
//      return DataModel.fromJson(json) as T;
//    }
//    throw Exception('parse error');
//  }
//
//  @override
//  Object toJson(T object) {
//    // This will only work if `object` is a native JSON type:
//    //   num, String, bool, null, etc
//    // Or if it has a `toJson()` function`.
//    return object;
//  }
//}
