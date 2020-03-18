import 'package:fish_redux/fish_redux.dart';

class $nameState implements Cloneable<$nameState> {

  bool isShowProgress;

  @override
  $nameState clone() {
    return $nameState()
      ..isShowProgress = isShowProgress;
  }
}

$nameState initState(Map<String, dynamic> args) {
  return $nameState()
    ..isShowProgress = false;
}
