import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_mtc/common/widget/component/common_body_component/state.dart';

class $nameState extends CommonBodyState implements Cloneable<CommonBodyState> {

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
