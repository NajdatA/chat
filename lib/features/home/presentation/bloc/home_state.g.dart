// GENERATED CODE - DO NOT MODIFY BY HAND

part of home_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HomeState extends HomeState {
  @override
  final bool isLoading;
  @override
  final bool success;
  @override
  final String error;
  @override
  final BuiltList<ConsultationInfo> consultations;

  factory _$HomeState([void Function(HomeStateBuilder) updates]) =>
      (new HomeStateBuilder()..update(updates)).build();

  _$HomeState._({this.isLoading, this.success, this.error, this.consultations})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('HomeState', 'isLoading');
    }
    if (success == null) {
      throw new BuiltValueNullFieldError('HomeState', 'success');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('HomeState', 'error');
    }
    if (consultations == null) {
      throw new BuiltValueNullFieldError('HomeState', 'consultations');
    }
  }

  @override
  HomeState rebuild(void Function(HomeStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeStateBuilder toBuilder() => new HomeStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeState &&
        isLoading == other.isLoading &&
        success == other.success &&
        error == other.error &&
        consultations == other.consultations;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, isLoading.hashCode), success.hashCode), error.hashCode),
        consultations.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HomeState')
          ..add('isLoading', isLoading)
          ..add('success', success)
          ..add('error', error)
          ..add('consultations', consultations))
        .toString();
  }
}

class HomeStateBuilder implements Builder<HomeState, HomeStateBuilder> {
  _$HomeState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  ListBuilder<ConsultationInfo> _consultations;
  ListBuilder<ConsultationInfo> get consultations =>
      _$this._consultations ??= new ListBuilder<ConsultationInfo>();
  set consultations(ListBuilder<ConsultationInfo> consultations) =>
      _$this._consultations = consultations;

  HomeStateBuilder();

  HomeStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _success = _$v.success;
      _error = _$v.error;
      _consultations = _$v.consultations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HomeState;
  }

  @override
  void update(void Function(HomeStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HomeState build() {
    _$HomeState _$result;
    try {
      _$result = _$v ??
          new _$HomeState._(
              isLoading: isLoading,
              success: success,
              error: error,
              consultations: consultations.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'consultations';
        consultations.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HomeState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
