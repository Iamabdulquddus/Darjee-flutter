import 'package:darjee_flutter/admin/sidebar_setting/sidebar_setting.dart';
import 'package:darjee_flutter/constants/style.dart';
import 'package:flutter/material.dart';
import '../../content.dart';
import 'components/add_franschise.dart';
import 'components/franchise_list.dart';

class SettingFranchise extends StatelessWidget {
  const SettingFranchise({Key? key}) : super(key: key);

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
              AddFranchise(),
              SizedBox(
                height: 20,
              ),
              AllFranchiseList(),
            ],
          ),
        ),
      ),
    );
  }
}
