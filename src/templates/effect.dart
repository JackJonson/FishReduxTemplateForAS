import 'package:fish_redux/fish_redux.dart';

import '$prefix_action.dart';
import '$prefix_state.dart';

Effect<$nameState> buildEffect() {
  return combineEffects(<Object, Effect<$nameState>>{
  });
}

void _onAction(Action action, Context<$nameState> ctx) {
}
