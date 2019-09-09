import 'package:fish_redux/fish_redux.dart';


import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class SuperItemComponent extends Component<SuperItemState> with PrivateReducerMixin {
  SuperItemComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<SuperItemState>(
                adapter: null,
                slots: <String, Dependent<SuperItemState>>{
                }),);

}
