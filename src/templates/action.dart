import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_bf_widgets/flutter_bf_widgets.dart';

//TODO replace with your own action
enum $nameAction { save, setInitData, }

class $nameActionCreator extends CommonBodyActionCreator {
  static Action save(Map<String, dynamic> params) {
    return Action($nameAction.save, payload: params);
  }

  static Action setInitData(InitDataCallback callback) {
    return Action($nameAction.setInitData, payload: callback);
  }
}
