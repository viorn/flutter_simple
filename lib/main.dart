import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:socfr/reducers/add_counter_reducer.dart';
import 'package:socfr/states/app_state.dart';
import 'package:socfr/view/pages/auth_page.dart';
import 'package:redux/redux.dart';
import 'package:socfr/view/pages/counter_page.dart';

void main() {
  final appReducers = combineReducers<AppState>([
    TypedReducer<AppState, CounterPlusAction>(counterPlus),
  ]);
  final store =
      new Store<AppState>(appReducers, initialState: AppState.defalut);
  runApp(MyApp(store));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;

  MyApp(this.store);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
        store: store,
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => AuthPageWidget(),
            '/counter': (context) => MyHomePage()
          },
          builder: (context, child) {
            return MediaQuery(
              child: child,
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            );
          },
        ));
  }
}
