import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<SuperItemState> buildReducer() {
  return asReducer(
    <Object, Reducer<SuperItemState>>{
      SuperItemAction.modify: _modify,
    },
  );
}

SuperItemState _modify(SuperItemState state, Action action) {
  final modifyFunc=action.payload as void Function(SuperItemState clone);
  final clone = state.clone();
  modifyFunc(clone);
  assert(state.hashCode != clone.hashCode); //不能是相同的对象
  return clone;
}
