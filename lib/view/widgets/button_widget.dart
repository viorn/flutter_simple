import 'package:flutter/material.dart';
import 'package:socfr/view/common/base_widget.dart';

class ButtonWidget extends StatelessWidget {
  final Color bgColor;
  final Color textColor;
  final String text;
  final VoidCallback onPressed;

  ButtonWidget(
      {@required this.text,
      this.bgColor = const Color.fromRGBO(93, 176, 117, 1),
      this.textColor = const Color.fromRGBO(255, 255, 255, 1),
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: bgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        onPressed: onPressed,
        child: Container(
            height: context.adp(50),
            child: Center(
                child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: textColor,
                  fontFamily: 'Inter',
                  fontSize: context.adp(16),
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ))));
  }
}
