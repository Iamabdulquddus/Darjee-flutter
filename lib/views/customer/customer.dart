
import 'package:darjee_flutter/connection/connect.dart';
import 'package:darjee_flutter/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../admin/sidebar/sidebar_widget.dart';
import '../../controller/customer_controller.dart';
import '../content.dart';
import 'components/add_customer_info.dart';
import 'components/customer_list.dart';


class Customer extends StatelessWidget {


  final controller = Get.put(CustomerController());

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
