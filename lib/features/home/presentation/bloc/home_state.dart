library home_state;

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:chat/features/home/domain/entities/consultation_info.dart';

part 'home_state.g.dart';

abstract class HomeState implements Built<HomeState, HomeStateBuilder> {
  bool get isLoading;

  bool get success;

  String get error;

  BuiltList<ConsultationInfo> get consultations;

  HomeState._();

  factory HomeState([updates(HomeStateBuilder b)]) = _$HomeState;

  factory HomeState.initial() {
    return HomeState((b) => b
        ..success = false
        ..isLoading = true
        ..consultations.replace([])
        ..error = ''
    );
  }

  factory HomeState.loading(HomeState currentState) {
    return currentState.rebuild((b) => b
      ..isLoading = true
    );
  }

  factory HomeState.failure(String error) {
    return HomeState((b) => b
      ..success = false
      ..isLoading = false
      ..consultations.replace([])
      ..error = error
    );
  }
}