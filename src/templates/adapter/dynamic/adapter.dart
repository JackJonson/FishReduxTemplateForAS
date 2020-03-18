import 'package:fish_redux/fish_redux.dart';

import 'state.dart';

class $nameAdapter extends SourceFlowAdapter<$nameState> {
  $nameAdapter()
      : super(
          pool: <String, Component<Object>>{

          },
          reducer: buildReducer(),
        );
}
