import 'package:flutter/material.dart';
import 'homePage.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
            color: Colors.red,
          ),
        ),
        home: HomePage(),
      ),
    );
