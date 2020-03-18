import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<$nameState> buildReducer() {
  return asReducer(
    <Object, Reducer<$nameState>>{
      $nameAction.save: _onSave,
    },
  );
}

$nameState _onSave($nameState state, Action action) {
  final $nameState newState = state.clone();
  return newState;
}
