import 'package:darjee_flutter/admin/sidebar_setting/sidebar_setting.dart';
import 'package:darjee_flutter/constants/style.dart';
import 'package:flutter/material.dart';
import '../../content.dart';
import 'components/add_admin.dart';
import 'components/all_admin_list.dart';

class Admin extends StatelessWidget {
  const Admin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: snowBackground,
      body: settingWidgetSidebar(
        context,
        cardOfUserTable(
          context,
          Column(
            children: const [
              AddAdmin(),
              SizedBox(
                height: 20,
              ),
              AllAdminList(),
            ],
          ),
        ),
      ),
    );
  }
}
