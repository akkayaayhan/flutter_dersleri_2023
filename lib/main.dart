import 'package:flutter/material.dart';

import 'day_02_text_widgets_and_properties/app2_1_text_basics.dart';
import 'day_10_row_column/app10_1_row.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: RowYapisi(),
    );
  }
}
