import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';
import 'package:flutter_mtc/common/widget/component/common_body_component/effect.dart';

Effect<$nameState> buildEffect() {
  return combineEffects(<Object, Effect<$nameState>>{
  }..addAll(buildCommonBodyEffect<$nameState>()));
}

void _onAction(Action action, Context<$nameState> ctx) {
}
