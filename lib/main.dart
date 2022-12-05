import 'package:darjee_flutter/views/configuration/worker_salary/worker_salary.dart';
import 'package:darjee_flutter/views/fabric/article_title/article_title.dart';
import 'package:darjee_flutter/views/fabric/fabric_item/fabric_item.dart';
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
      home: const FabricItem(),
    );
  }
}
