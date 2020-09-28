import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';
import 'package:flutter_mtc/common/widget/component/common_body_component/reducer.dart';

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
