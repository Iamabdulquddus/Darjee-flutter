import 'package:darjee_flutter/constants/style.dart';
import 'package:flutter/material.dart';

import '../../../admin/sidebar/sidebar_widget.dart';
import '../../content.dart';
import 'components/add_measurements.dart';
import 'components/search_customer.dart';
import 'components/searched_customer_output.dart';

class MeasurementBook extends StatelessWidget {
  const MeasurementBook({Key? key}) : super(key: key);

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
              SearchCustomer(),
              SizedBox(height: 20,),
              SearchedCustomerOutput(),
              SizedBox(height: 20,),
              AddMeasurements(),
            ],
          ),
        ),
      ),
    );
  }
}
