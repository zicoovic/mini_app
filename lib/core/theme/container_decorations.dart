import 'package:flutter/material.dart';

class ContainerDecorations {
  const ContainerDecorations._();

  static const BoxDecoration backgroundGradient = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color(0xFFDDE2FF), Color(0xFFF9F8FD)],
    ),
  );
}
