import 'package:flutter/material.dart';
import 'package:socfr/view/widgets/button_widget.dart';
import 'package:socfr/common/base_widget.dart';
import 'package:socfr/view/widgets/input_widdget.dart';

class AuthPageWidget extends StatefulWidget {
  @override
  _AuthPageWidgetState createState() => _AuthPageWidgetState();
}

class _AuthPageWidgetState extends State<AuthPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                child: Stack(children: <Widget>[
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(left: context.adp(18), right: context.adp(18)),
        child: Column(
          children: [
            Spacer(flex: 5),
            InputTextWidget(hint: "Login"),
            SizedBox(height: context.adp(14)),
            InputTextWidget(hint: "Password"),
            SizedBox(height: context.adp(14)),
            ButtonWidget(
              text: "Login",
              onPressed: () {},
            ),
            Spacer(flex: 3)
          ],
        ),
      )
    ]))));
  }
}
