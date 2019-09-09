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
          connector: _SuperReselect2Connector(),
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


class _SuperReselect2Connector extends Reselect2<SuperState, List<ItemBean>,List<String>,List<bool>> {
  @override
  List<ItemBean> computed(List<String> sub0, List<bool> sub1) {
    return List.generate(sub0.length, (index)=>ItemBean("SuperItemComponent",SuperItemState(title: sub0[index],select: sub1[index])));
  }

  @override
  List<String> getSub0(SuperState state) {
    return state.titles;
  }

  @override
  List<bool> getSub1(SuperState state) {
    return state.selects;
  }

  @override
  void set(SuperState state, List<ItemBean> items) {
    List<SuperItemState> subStates = items.map((item)=>item.data).cast<SuperItemState>().toList();
    print(subStates);
    state.titles=subStates.map((sub)=>sub.title).toList();
    state.selects=subStates.map((sub)=>sub.select).toList();
  }
}
