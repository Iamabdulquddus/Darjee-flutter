import 'package:flutter/material.dart';

class CDM {
  //complex drawer menu
   IconData? icon;
  final String title ;
  final String imageIcon;
  final List<subList> submenus;
  CDM({ required this.imageIcon, this.icon, required this.title, required this.submenus});

}


class subList {
  String? myRoute;
  Widget? imageIcon;
  late final String subTitle;
  IconData? subIcon;
  subList({
    this.imageIcon,
    required this.subTitle,
    this.subIcon,
    this.myRoute
  });
}
