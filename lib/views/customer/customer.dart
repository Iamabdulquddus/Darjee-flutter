
import 'package:darjee_flutter/constants/style.dart';
import 'package:flutter/material.dart';

import '../../admin/sidebar/sidebar_widget.dart';
import '../content.dart';
import 'components/add_customer_info.dart';
import 'components/customer_list.dart';

class Customer extends StatelessWidget {
  const Customer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: snowBackground,
      body: WidgetWithSidebar(
          context, cardOfUserTable(context, Column(
            children: [
              AddCustomerInfo(),
              SizedBox(height: 20,),
              AddCustomerList()
            ],
          ))),
    );
  }
}
