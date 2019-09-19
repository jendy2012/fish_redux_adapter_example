import 'package:fish_redux/fish_redux.dart';
import 'state.dart';


enum SuperAction { modify,onRefresh }

class SuperActionCreator {
  static Action modify(void Function(SuperState clone) modifyFunc) {
    return  Action(SuperAction.modify,payload: modifyFunc);
  }
  static Action onRefresh() {
    return  Action(SuperAction.onRefresh);
  }
}
