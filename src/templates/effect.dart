import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';
import 'package:flutter_mtc/common/widget/component/common_body_component/effect.dart';
import 'package:flutter_mtc/common/widget/component/common_body_component/action.dart';

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
