import 'package:flutter/material.dart';

const _colorList = <Color>[
  Colors.teal,
  Colors.purpleAccent,
  Colors.green,
  Colors.blue,
  Colors.pink,
  Colors.red,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'Selected color must be greater than 0'),
        assert(selectedColor < _colorList.length,
            'Selected color must be greater than ${_colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorList[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: false));
}
