import 'package:flutter/material.dart';
import 'package:socfr/view/pages/auth_page.dart';
import 'package:socfr/view/pages/counter_page.dart';
import 'package:socfr/handlers/counter_handler.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterHanlder().conntect();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {'/': (context) => AuthPageWidget()},
    );
  }
}
