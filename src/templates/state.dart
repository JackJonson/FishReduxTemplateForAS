import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_bf_widgets/flutter_bf_widgets.dart';

class $nameState extends CommonReduxBodyState implements Cloneable<CommonReduxBodyState> {

  @override
  $nameState clone() {
    return $nameState()
    //copy super state
      ..isShowProgress = isShowProgress
      ..isShowLinearDeterminateProgress = isShowLinearDeterminateProgress
      ..progress = progress
      ..isInited = isInited
      ..isShowErrorView = isShowErrorView
      ..isShowEmptyView = isShowEmptyView
      ..isShowPlaceholderView = isShowPlaceholderView
      ..remindText = remindText
      ..connectSubscription = connectSubscription
      ..initData = initData
    ;
  }
}

$nameState initState(Map<String, dynamic> args) {
  return $nameState()
    ..initCommonBodyState();
}
