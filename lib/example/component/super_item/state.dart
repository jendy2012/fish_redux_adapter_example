import 'package:fish_redux/fish_redux.dart';

import 'package:meta/meta.dart';



class SuperItemState implements Cloneable<SuperItemState>{

  String title;
  bool select;


  SuperItemState({this.title, this.select});

  @override
  SuperItemState clone() {
    return SuperItemState(title:title,select: select);
  }

  @override
  String toString() {
    return 'SuperItemState{title: $title, select: $select}';
  }
}
