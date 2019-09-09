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
    return List.generate(
        state.titles.length,
        (index) => ItemBean(
            "SuperItemComponent",
            SuperItemState(
                title: state.titles[index], select: state.selects[index])));
  }

  @override
  void set(SuperState state, List<ItemBean> items) {
    List<SuperItemState> subStates =
        items.map((item) => item.data).cast<SuperItemState>().toList();
    state.titles = subStates.map((sub) => sub.title).toList();
    state.selects = subStates.map((sub) => sub.select).toList();
  }
}
