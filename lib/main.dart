import 'package:darjee_flutter/views/configuration/design_options/design_options.dart';
import 'package:darjee_flutter/views/configuration/measurement_book/measurement_book.dart';
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Darjee',
      theme: ThemeData(
        primarySwatch: Palette.myColors,
      ),
      home: const DesignOptions(),
    );
  }
}
