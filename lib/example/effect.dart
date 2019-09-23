import 'package:adapter_demo/example/component/super_item/state.dart';
import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<SuperState> buildEffect() {
  return combineEffects(<Object, Effect<SuperState>>{
    Lifecycle.initState: _initState,
    SuperAction.onRefresh: _onRefresh,
  });
}

void _initState(Action action, Context<SuperState> ctx)  {

}

void _onRefresh(Action action, Context<SuperState> ctx) async {
  await Future.delayed(Duration(seconds: 1));
  //模拟刷新
  ctx.dispatch(SuperActionCreator.modify((clone){
    clone.items=[SuperItemState()];
  }));
}
