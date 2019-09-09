import 'package:fish_redux/fish_redux.dart';
import 'adapter/adapter.dart';
import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class SuperPage extends Page<SuperState, SuperState> {
  SuperPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<SuperState>(
                adapter:NoneConn<SuperState>()+SuperAdapter(),
                slots: <String, Dependent<SuperState>>{
                }),
            middleware: <Middleware<SuperState>>[
            ],);

}
