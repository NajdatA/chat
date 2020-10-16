// GENERATED CODE - DO NOT MODIFY BY HAND

part of consultation_info_model;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConsultationInfoModel _$ConsultationInfoModelFromJson(
    Map<String, dynamic> json) {
  return ConsultationInfoModel(
    json['id'] as int,
    json['nickname'] as String,
  );
}

Map<String, dynamic> _$ConsultationInfoModelToJson(
        ConsultationInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
    };
