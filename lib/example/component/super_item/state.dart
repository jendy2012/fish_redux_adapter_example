import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';

import 'package:meta/meta.dart';

class SuperItemState implements Cloneable<SuperItemState> {
  AnimationController controller;
  Animation<Color> animationColor;

  UniqueKey uniqueKey = UniqueKey();

  SuperItemState();

  @override
  SuperItemState clone() {
    return SuperItemState()
      ..controller=controller
      ..animationColor=animationColor
      ..uniqueKey = uniqueKey;
  }
}
