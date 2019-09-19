import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

//SuperItemActionCreator
Widget buildView(
    SuperItemState state, Dispatch dispatch, ViewService viewService) {
  return state.controller == null
      ? Center(
          child: CircularProgressIndicator(),
        )
      : ExpansionTile(
          title: Text('Title1'),
          children: <Widget>[
            AnimatedBuilder(
              child: ListTile(
                title: Text('body1 ${state.uniqueKey.hashCode}'),
                onTap: (){
                  if(state.controller.isCompleted||state.controller.status==AnimationStatus.forward){
                    state.controller.reverse();
                  }else{
                    state.controller.forward();
                  }
                },
              ),
              builder: (BuildContext context, Widget child) {
                return ListTileTheme(
                  textColor: state.animationColor.value,
                  iconColor: state.animationColor.value,
                  child: child,
                );
              },
              animation: state.controller,
            )
          ],
        );
}
