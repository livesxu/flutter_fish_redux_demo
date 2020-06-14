import 'package:fish_redux/fish_redux.dart';
import 'package:flutterappfishreduxdemo/OneCom/component.dart';
import 'package:flutterappfishreduxdemo/OneCom/state.dart' as OneComState;
import 'package:flutterappfishreduxdemo/TwoPage/adapter.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class TwoPagePage extends Page<TwoPageState, Map<String, dynamic>> {
  TwoPagePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<TwoPageState>(
                adapter: NoneConn<TwoPageState>() + TwoPageAdapter(),
                slots: <String, Dependent<TwoPageState>>{
                  "oneSolt":ConnOp(get: (TwoPageState state) => OneComState.OneComState(title: "oneSolt添加的模块插件") ) + OneComComponent()
                }),
            middleware: <Middleware<TwoPageState>>[
            ],);

}
