import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mtc/common/resource/string/string_zh.dart';
import 'package:flutter_mtc/common/util/utils.dart';
import 'package:flutter_mtc/common/widget/component/common_body_component/action.dart';
import 'package:flutter_mtc/common/widget/custom_body_widget.dart';
import 'package:flutter_mtc/common/widget/custom_title_bar_widget.dart';
import 'action.dart';
import 'state.dart';


Widget buildView(
    StatisticState state, Dispatch dispatch, ViewService viewService) {
  ThemeData themeData = Theme.of(viewService.context);
  StringZh stringZh = Utils.getLocale(viewService.context);
  return Scaffold(
    appBar: CustomTitleBarWidget(
      title: stringZh.,
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
