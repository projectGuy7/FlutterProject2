import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextStyles {
  static var title = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 22.0
  );
  static var body = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 16.0,
    color: const Color.fromARGB(128, 0, 0, 0)
  );
  static var button = TextStyle(
    fontSize: 18.0
  );
  static var link = TextStyle(
    color: Colors.amber,
    fontSize: 18.0
  );
}