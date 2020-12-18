import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bf_widgets/flutter_bf_widgets.dart';
import 'package:$packageName/common/widget/custom_body_widget.dart';
import 'package:$packageName/common/widget/custom_title_bar_widget.dart';
import 'package:$packageName/common/resource/string/string_zh.dart';
import 'package:$packageName/common/util/utils.dart';

import '$prefix_action.dart';
import '$prefix_state.dart';


Widget buildView(
    $nameState state, Dispatch dispatch, ViewService viewService) {
  ThemeData themeData = Theme.of(viewService.context);
  StringZh stringZh = Utils.getLocale(viewService.context);
  return Scaffold(
    appBar: CustomTitleBarWidget(
      title: '',
      leftText: stringZh.back,
    ),
    backgroundColor: themeData.scaffoldBackgroundColor,
    body: CustomBodyWidget(
      bodyWidget: Container(),
      isShowProgressWidget: state.isShowProgress,
      progressValue: state.progress,
      isShowLinearProgress: state.isShowLinearDeterminateProgress,
      isShowPlaceholderView: state.isShowPlaceholderView,
      isShowErrorView: state.isShowErrorView,
      remindText: state.remindText,
      onErrorViewButtonClick: () {
        dispatch(CommonBodyActionCreator.refreshData());
      },
    ),
  );
}
