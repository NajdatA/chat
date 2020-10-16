import 'package:bloc/bloc.dart';
import 'package:chat/core/usecases/usecase.dart';
import 'package:chat/core/util/constants.dart';
import 'package:chat/features/home/domain/usecases/get_consultations.dart';

import 'bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  GetConsultations getConsultations;

  HomeBloc({
    GetConsultations consultations
}) : getConsultations = consultations;

  void getCons() {
    dispatch(GetConsultationsEvent());
  }

  @override
  HomeState get initialState => HomeState.initial();

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is GetConsultationsEvent) {
      yield* mapGetConsultationsEvent(event);
    }
  }

  Stream<HomeState> mapGetConsultationsEvent(GetConsultationsEvent e) async* {
    yield HomeState.loading(currentState);
    final failureOrConsultations = await getConsultations(
        NoParams());
    yield failureOrConsultations.fold((failure) {
      return HomeState.failure(FailureToMessage.getMessage(failure));
    }, (consultations) {
      print('get consultations success ${consultations[0].nickname}');
      return currentState.rebuild((b) =>
      b
        ..consultations.addAll(consultations)
        ..success = true
        ..isLoading = false
        ..error = '');
    });
  }
}