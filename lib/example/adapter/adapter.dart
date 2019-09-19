import 'package:fish_redux/fish_redux.dart';
import '../component/super_item/component.dart';
import '../component/super_item/state.dart';
import '../state.dart';

class SuperAdapter extends DynamicFlowAdapter<SuperState> {
  SuperAdapter()
      : super(
          pool: <String, Component<Object>>{
            "SuperItemComponent": SuperItemComponent()
          },
          connector: _SuperConnector(),
        );
}

class _SuperConnector extends ConnOp<SuperState, List<ItemBean>> {
  @override
  List<ItemBean> get(SuperState state) {
    return state.items.map((item)=>ItemBean('SuperItemComponent',item)).toList();
  }

  @override
  void set(SuperState state, List<ItemBean> items) {
    state.items=items.map((item)=>item.data).cast<SuperItemState>().toList();
  }
}

