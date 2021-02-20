import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socfr/view/pages/counter/cubit/counter_cubit.dart';

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
            BlocBuilder<CounterCubit, CounterState>(
              buildWhen: (previous, current) =>
                  previous.counter != current.counter,
              builder: (context, state) {
                return Text(
                  "${state.counter}",
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.of<CounterCubit>(context).plus();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
