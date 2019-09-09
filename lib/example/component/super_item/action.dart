import 'package:fish_redux/fish_redux.dart';
import 'state.dart';


enum SuperItemAction { modify ,onToggleSelect }

class SuperItemActionCreator {
  static Action modify(void Function(SuperItemState clone) modifyFunc) {
    return  Action(SuperItemAction.modify,payload: modifyFunc);
  }
  static Action onToggleSelect(bool value) {
    return  Action(SuperItemAction.onToggleSelect,payload: value);
  }
}
