import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';


import 'action.dart';
import 'state.dart';

// SuperActionCreator
Widget buildView(SuperState state, Dispatch dispatch, ViewService viewService) {
  final adapter = viewService.buildAdapter();
  return Scaffold(
    appBar: AppBar(title: Text("Example"),),
    body: ListView.builder(itemBuilder: adapter.itemBuilder,itemCount: adapter.itemCount,),
  );
}
