import 'package:flutter/material.dart';

Widget wrapper(Widget widget) {
  return MaterialApp(
    locale: const Locale('en'),
    home: widget,
  );
}
