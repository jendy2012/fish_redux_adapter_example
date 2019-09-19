import 'package:fish_redux/fish_redux.dart';
import 'component/super_item/state.dart';
import 'package:meta/meta.dart';

class SuperState implements Cloneable<SuperState> {


  List<SuperItemState> items;


  SuperState({this.items});

  @override
  SuperState clone() {
    return SuperState(items: items);
  }
}

SuperState initState(SuperState initState) {
  return initState ?? SuperState(
      items: [SuperItemState(),SuperItemState()]
  );
}
