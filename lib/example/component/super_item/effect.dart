import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<SuperItemState> buildEffect() {
  return combineEffects(<Object, Effect<SuperItemState>>{
    Lifecycle.initState: _initState,
    SuperItemAction.onToggleSelect: _onToggleSelect,
  });
}

void _initState(Action action, Context<SuperItemState> ctx) {
}

void _onToggleSelect(Action action, Context<SuperItemState> ctx) {
  bool value = action.payload;
  ctx.dispatch(SuperItemActionCreator.modify((clone){
    clone.select=value;
  }));
}
