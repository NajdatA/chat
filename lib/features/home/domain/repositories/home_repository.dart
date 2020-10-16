import 'package:chat/core/entites/paginate_list.dart';
import 'package:chat/core/error/failures.dart';
import 'package:chat/features/home/domain/entities/consultation_info.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<ConsultationInfo>>> getConsultations();
}