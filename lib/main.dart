import 'package:flutter/material.dart';

import 'day_02_text_widgets_and_properties/app2_1_text_basics.dart';
import 'day_10_row_column/app10_1_row.dart';
import 'day_21_tabbar_bottomappbar/app21_1_tabbar.dart';
import 'day_21_tabbar_bottomappbar/app21_2_bottomappbar.dart';
import 'day_21_tabbar_bottomappbar/app21_3_tabbar_bottomappbar_advanced.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        bottomAppBarTheme: BottomAppBarTheme(color: Colors.black),
        primarySwatch: Colors.blue,
      ),
      home: TabBarAdvanced(),
    );
  }
}
