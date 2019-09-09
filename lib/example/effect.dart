import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<SuperState> buildEffect() {
  return combineEffects(<Object, Effect<SuperState>>{
    Lifecycle.initState: _initState,
  });
}

void _initState(Action action, Context<SuperState> ctx)  {

}
