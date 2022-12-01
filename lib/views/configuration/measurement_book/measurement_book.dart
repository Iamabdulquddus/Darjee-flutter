import 'package:flutter/material.dart';

import '../../../admin/sidebar/sidebar_widget.dart';
import '../../content.dart';
import 'components/search_customer.dart';

class MeasurementBook extends StatelessWidget {
  const MeasurementBook({Key? key}) : super(key: key);

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
              SearchCustomer(),
            ],
          ),
        ),
      ),
    );
  }
}
