library private_consultations_model;

import 'package:chat/core/network/models/paginate_response_model.dart';
import 'package:chat/features/home/data/models/consultation_info_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'private_consultations_model.g.dart';

@JsonSerializable()
class PrivateConsultationsModel<T> {

  @JsonKey(name: 'private_consultations')
  @_Converter()
  final T private;

  PrivateConsultationsModel(this.private);

  factory PrivateConsultationsModel.fromJson(Map<String, dynamic> json) =>
      _$PrivateConsultationsModelFromJson(json);

}

class _Converter<T> implements JsonConverter<T, Object> {
  const _Converter();

  @override
  T fromJson(Object json) {
    print('ttt1 $T');
    if (json is Map<String, dynamic> &&
        T.toString() == ConsultationInfoModel.className) {
      return PrivateConsultationsModel<ConsultationInfoModel>.fromJson(json) as T;
    }
    return json as T;
  }

  @override
  Object toJson(object) {
    return object;
  }
}