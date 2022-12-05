import 'package:flutter/material.dart';

import '../../../admin/sidebar/sidebar_widget.dart';
import '../../content.dart';
import 'components/add_brand_title.dart';
import 'components/all_brand_titles.dart';

class ArticleTitle extends StatelessWidget {
  const ArticleTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
