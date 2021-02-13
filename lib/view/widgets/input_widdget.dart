import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:socfr/common/base_widget.dart';

class InputTextWidget extends StatelessWidget {
  final String hint;

  InputTextWidget({this.hint});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.adp(50),
      child: TextField(
          decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFF6F6F6),
        enabled: true,
        labelStyle: TextStyle(color: Color(0xFFBDBDBD)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(context.adp(8)),
            borderSide: const BorderSide(color: Color(0xFFE8E8E8))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(context.adp(8)),
            borderSide: const BorderSide(color: Colors.lightBlue, width: 2)),
        labelText: hint,
      )),
    );
  }
}
