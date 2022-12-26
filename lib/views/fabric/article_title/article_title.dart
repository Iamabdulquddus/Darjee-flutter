import 'package:darjee_flutter/constants/style.dart';
import 'package:flutter/material.dart';

import '../../../admin/sidebar/sidebar_widget.dart';
import '../../content.dart';
import 'components/add_article_title.dart';
import 'components/all_article_titles.dart';

class ArticleTitle extends StatelessWidget {
  const ArticleTitle({Key? key}) : super(key: key);

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
              AddArticleTitle(),
              SizedBox(
                height: 20,
              ),
              AllArticleTitles(),
            ],
          ),
        ),
      ),
    );
  }
}
