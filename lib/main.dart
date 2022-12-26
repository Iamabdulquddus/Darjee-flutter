import 'package:darjee_flutter/routes/routes.dart';
import 'package:darjee_flutter/views/configuration/worker_salary/worker_salary.dart';
import 'package:darjee_flutter/views/fabric/article_title/article_title.dart';
import 'package:darjee_flutter/views/fabric/fabric_item/fabric_item.dart';
import 'package:flutter/material.dart';
import 'constants/style.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      color: snowBackground,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Palette.myColors,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: MyRoutes.getDashboard(),
      getPages: MyRoutes.appRoutes(),
    );
  }
}
