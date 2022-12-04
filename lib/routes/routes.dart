// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/route_middleware.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../views/dashboard/dashboard.dart';


class MyRoutes {

  ///views routes***************
  static String dashboard = '/dashboard';

  static String getDashboard() => dashboard;


  /// *********************GetPage************************

  static List<GetPage> appRoutes() => [
    GetPage(
      name: dashboard,
      page: () => Dashboard(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
    ),

  ];
}

