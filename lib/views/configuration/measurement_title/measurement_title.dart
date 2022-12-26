
import 'package:darjee_flutter/constants/style.dart';
import 'package:flutter/material.dart';

import '../../../admin/sidebar/sidebar_widget.dart';
import '../../content.dart';
import 'components/add_measurement_title.dart';
import 'components/all_items_with_measurement_titles.dart';

class MeasurementTitle extends StatelessWidget {
  const MeasurementTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: snowBackground,
      body: WidgetWithSidebar(
          context, cardOfUserTable(context, Column(
        children: [
          AddMeasurementTitle(),
          SizedBox(height: 20,),
          AllItemsWithMeasurementTitles()
        ],
      ))),
    );
  }
}
