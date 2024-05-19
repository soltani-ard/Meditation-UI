import 'package:flutter/material.dart';

extension AppContext on BuildContext {
  Size get size => MediaQuery.of(this).size;

  double get height => size.height;

  double get width => size.width;

  Future push(Widget screen) async {
    return Navigator.push(
        this, MaterialPageRoute(builder: (context) => screen));
  }

  Future pop() async {
    return Navigator.pop(this);
  }
}

extension HexColor on Color {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
