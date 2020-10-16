import 'package:chat/core/entites/paginate_list.dart';
import 'package:chat/core/error/failures.dart';
import 'package:chat/core/usecases/usecase.dart';
import 'package:chat/features/home/domain/entities/consultation_info.dart';
import 'package:chat/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class GetConsultations implements UseCase<List<ConsultationInfo>, NoParams> {
  final HomeRepository repository;

  GetConsultations(this.repository);

  @override
  Future<Either<Failure, List<ConsultationInfo>>> call(params) async {
    return await repository.getConsultations();
  }
}