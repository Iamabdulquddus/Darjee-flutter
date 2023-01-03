
import 'package:darjee_flutter/admin/sidebar_setting/sidebar_setting.dart';
import 'package:darjee_flutter/constants/style.dart';
import 'package:flutter/material.dart';

import '../../content.dart';


class SettingDashboard extends StatelessWidget {
  const SettingDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: snowBackground,
      body: settingWidgetSidebar(
          context, cardOfUserTable(context, Column(
        children: [
          Center(child: Text('Hola'),),
        ],
      ))),
    );
  }
}
