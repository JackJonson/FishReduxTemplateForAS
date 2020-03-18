import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<$nameState> buildEffect() {
  return combineEffects(<Object, Effect<$nameState>>{
  });
}

void _onAction(Action action, Context<$nameState> ctx) {
}
