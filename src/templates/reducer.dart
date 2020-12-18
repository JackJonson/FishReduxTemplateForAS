import 'package:fish_redux/fish_redux.dart';

import '$prefix_action.dart';
import '$prefix_state.dart';
import 'package:flutter_bf_widgets/flutter_bf_widgets.dart';

Reducer<$nameState> buildReducer() {
  return asReducer(
    <Object, Reducer<$nameState>>{
      $nameAction.save: _onSave,
      $nameAction.setInitData:_setInitData,
    }..addAll(buildCommonBodyReducer<$nameState>()),
  );
}

$nameState _onSave($nameState state, Action action) {
  final $nameState newState = state.clone();
  return newState;
}

$nameState _setInitData($nameState state, Action action) {
  final $nameState newState = state.clone();
  newState.initData=action.payload;
  return newState;
}
