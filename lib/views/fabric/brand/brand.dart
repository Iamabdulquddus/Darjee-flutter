import 'package:darjee_flutter/constants/style.dart';
import 'package:flutter/material.dart';

import '../../../admin/sidebar/sidebar_widget.dart';
import '../../content.dart';
import 'components/add_brand_title.dart';
import 'components/all_brand_titles.dart';

class BrandTitle extends StatelessWidget {
  const BrandTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: snowBackground,
      body: WidgetWithSidebar(
        context,
        cardOfUserTable(
          context,
          Column(
            children: [
              AddBrandTitle(),
              SizedBox(height: 20,),
              AllBrandTitles(),
            ],
          ),
        ),
      ),
    );
  }
}
