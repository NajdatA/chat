import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class ConsultationInfo extends Equatable {
  final int id;
  final String nickname;

  ConsultationInfo({
    @required this.id,
    @required this.nickname,
  }) : super([id, nickname]);
}
