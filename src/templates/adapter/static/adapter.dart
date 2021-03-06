import 'package:fish_redux/fish_redux.dart';

import '$prefix_effect.dart';
import '$prefix_reducer.dart';
import '$prefix_state.dart';

class $nameAdapter extends StaticFlowAdapter<$nameState> {
  $nameAdapter()
      : super(
          slots:<Dependent<$nameState>>[

          ],
          effect: buildEffect(),
          reducer: buildReducer(),
        );
}
