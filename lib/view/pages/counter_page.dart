import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:socfr/reducers/add_counter_reducer.dart';
import 'package:socfr/states/app_state.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title = 'Counter'}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            StoreConnector<AppState, int>(
              distinct: true,
              converter: (store) => store.state.counterPage.counter,
              builder: (context, vm) {
                return Text(
                  "$vm",
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          StoreProvider.of<AppState>(context).dispatch(CounterPlusAction());
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
