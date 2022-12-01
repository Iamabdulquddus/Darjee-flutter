import 'package:flutter/material.dart';

import '../../../admin/sidebar/sidebar_widget.dart';
import '../../content.dart';
import 'components/extra_desigin_options.dart';

class DesignOptions extends StatelessWidget {
  const DesignOptions({Key? key}) : super(key: key);

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
              ExtraDesignOptions(),
            ],
          ),
        ),
      ),
    );
  }
}
