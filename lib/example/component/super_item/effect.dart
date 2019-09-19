import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart' as prefix0;
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<SuperItemState> buildEffect() {
  return combineEffects(<Object, Effect<SuperItemState>>{
    Lifecycle.initState: _initState,
    Lifecycle.dispose: _dispose,
  });
}

void _initState(Action action, Context<SuperItemState> ctx) {
  print('_initState');
  ctx.dispatch(SuperItemActionCreator.modify((clone){
    clone.controller=AnimationController(vsync: (ctx.stfState) as TickerProvider,duration: Duration(milliseconds: 300) );
    clone.animationColor=clone.controller.drive(ColorTween(begin: Colors.amber,end: Colors.blueGrey));
  }));
}


void _dispose(Action action, Context<SuperItemState> ctx) {
  print('_dispose');
  ctx.state.controller?.dispose();
}


