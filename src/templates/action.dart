import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum $nameAction { save }

class $nameActionCreator {
  static Action save(Map<String,dynamic> params) {
    return Action($nameAction.save,payload: params);
  }
}
