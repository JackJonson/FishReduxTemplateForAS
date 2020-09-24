import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_mtc/common/widget/component/common_body_component/action.dart';

//TODO replace with your own action
enum $nameAction { save }

class $nameActionCreator extends CommonBodyActionCreator{
  static Action save(Map<String,dynamic> params) {
    return Action($nameAction.save,payload: params);
  }
}
