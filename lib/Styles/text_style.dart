import 'package:flutter/material.dart';

class BookTextStyle {
  static TextStyle plainText() {
    return const TextStyle(
      fontSize: 20,
      color: Colors.black,
    );
  }

  static TextStyle prophetText() {
    return const TextStyle(
      fontSize: 20,
      color: Colors.red,
      fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic
    );
  }

  static TextStyle contentsText() {
  return const TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20);
}
}
