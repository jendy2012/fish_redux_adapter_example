import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

//SuperItemActionCreator
Widget buildView(SuperItemState state, Dispatch dispatch, ViewService viewService) {
  return SwitchListTile(onChanged: (bool value) {
    dispatch(SuperItemActionCreator.onToggleSelect(value));
  }, value: state.select,title: Text(state.title),);
}
