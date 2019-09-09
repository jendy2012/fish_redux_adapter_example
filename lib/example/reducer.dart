import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<SuperState> buildReducer() {
  return asReducer(
    <Object, Reducer<SuperState>>{
      SuperAction.modify: _modify,
    },
  );
}

SuperState _modify(SuperState state, Action action) {
  final modifyFunc=action.payload as void Function(SuperState clone);
  final clone = state.clone();
  modifyFunc(clone);
  assert(state.hashCode != clone.hashCode); //不能是相同的对象
  return clone;
}
