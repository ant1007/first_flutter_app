// ignore_for_file: unused_import

import 'package:first_flutter_app/counter_widget.dart';
import 'package:first_flutter_app/cupertino_test_route.dart';
import 'package:first_flutter_app/get_state_object_route.dart';
import 'package:first_flutter_app/my_home_page.dart';
import 'package:first_flutter_app/context_route.dart';
import 'package:first_flutter_app/echo.dart';
import 'package:first_flutter_app/parent_widget.dart';
import 'package:first_flutter_app/parent_widget_c.dart';
import 'package:first_flutter_app/tapbox_a.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const ParentWidgetC(),
    );
  }
}
