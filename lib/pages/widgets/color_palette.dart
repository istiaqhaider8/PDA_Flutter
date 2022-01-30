
import 'package:flutter/material.dart';
class Palette {
  static const MaterialColor kToDark = const MaterialColor(
    0xff10288D, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xff10288D),//10%
      100: const Color(0xff10288D),//20%
      200: const Color(0xff10288D),//30%
      300: const Color(0xff10288D),//40%
      400: const Color(0xff10288D),//50%
      500: const Color(0xff10288D),//60%
      600: const Color(0xff10288D),//70%
      700: const Color(0xff10288D),//80%
      800: const Color(0xff10288D),//90%
      900: const Color(0xff10288D),//100%
    },
  );
}