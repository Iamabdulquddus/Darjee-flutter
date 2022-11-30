import 'package:darjee_flutter/views/configuration/measurement_title/measurement_title.dart';
import 'package:darjee_flutter/views/customer/customer.dart';
import 'package:darjee_flutter/views/dashboard/dashboard.dart';
import 'package:darjee_flutter/views/franchise/franchise.dart';
import 'package:darjee_flutter/views/generate_order/generate_order.dart';
import 'package:flutter/material.dart';
import 'constants/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // scrollBehavior: MyCustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      title: 'Darjee',
      theme: ThemeData(
        primarySwatch: Palette.myColors,
      ),
      home:  MeasurementTitle(),
    );
  }
}
