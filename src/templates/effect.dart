import 'package:fish_redux/fish_redux.dart';

import '$prefix_action.dart';
import '$prefix_state.dart';
import 'package:flutter_bf_widgets/flutter_bf_widgets.dart';

Effect<$nameState> buildEffect() {
  return combineEffects(<Object, Effect<$nameState>>{
    Lifecycle.initState: _initState,
    Lifecycle.dispose: _dispose,
  }..addAll(buildCommonBodyEffect<$nameState>()));
}

void _initState(Action action, Context<$nameState> ctx) {
  _initData() async {

  }
  ctx.dispatch($nameActionCreator.setInitData(_initData));
  ctx.dispatch(CommonBodyActionCreator.refreshData());
}

void _dispose(Action action, Context<$nameState> ctx) {

}
