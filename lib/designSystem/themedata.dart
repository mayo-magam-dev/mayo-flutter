import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final customThemeData = ThemeData(
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle.light,
  ),
  splashFactory: NoSplash.splashFactory,
  useMaterial3: true,
  scaffoldBackgroundColor: Colors.white,
  fontFamily: 'Pretendard',
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.blue,
    accentColor: Colors.blue,
    cardColor: Colors.white,
    backgroundColor: Colors.white,
    errorColor: Colors.red,
  ).copyWith(
    primary: Colors.blue,
    secondary: Colors.blue,
  ),
);
