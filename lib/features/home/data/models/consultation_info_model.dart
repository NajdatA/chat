library consultation_info_model;

import 'package:chat/features/home/domain/entities/consultation_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'consultation_info_model.g.dart';

@JsonSerializable()
class ConsultationInfoModel extends ConsultationInfo {

  static final String paginateName = 'PrivateConsultationsModel<ConsultationInfoModel>';
  static final String className = 'ConsultationInfoModel';

  @JsonKey()
  final int id;
  @JsonKey()
  final String nickname;

  ConsultationInfoModel(this.id, this.nickname);

  factory ConsultationInfoModel.fromJson(Map<String, dynamic> json) =>
      _$ConsultationInfoModelFromJson(json);

}
