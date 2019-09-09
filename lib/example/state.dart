import 'package:fish_redux/fish_redux.dart';
import 'component/super_item/state.dart';
import 'package:meta/meta.dart';

class SuperState implements Cloneable<SuperState> {

  List<String> titles;
  List<bool> selects;


  SuperState({this.titles, this.selects});

  @override
  SuperState clone() {
    return SuperState(titles: titles,selects: selects);
  }
}

SuperState initState(SuperState initState) {
  return initState ?? SuperState(
    titles: ["titles1","titles2","titles3"],
    selects: [false,false,false]
  );
}
