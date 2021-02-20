import 'package:flutter/widgets.dart';

extension Adp on BuildContext {
  double adp(int value) {
    return (MediaQuery.of(this).size.width / 360.0) * value;
  }
}
