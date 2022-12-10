import 'dart:ui';
import 'package:darjee_flutter/widgets/dropdown.dart';
import 'package:flutter/material.dart';
import '../../../constants/style.dart';
import '../../admin/sidebar/sidebar_widget.dart';
import '../../model/order_item.dart';
import '../../responsive.dart';
import '../../widgets/textformfeild.dart';
import '../content.dart';
import 'components/order_detail_extra.dart';
import 'components/order_detail_form.dart';
import 'components/order_detail_info_item.dart';
import 'components/order_invoice_card.dart';
import 'components/order_measurement_card.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WidgetWithSidebar(
        context,
        cardOfUserTable(
          context,
          Column(
            children: const[
               OrderDetailForm(),
               SizedBox(height: 20,),
               OrderInvoiceCard(),
            ],
          ),
        ),
      ),
    );
  }
}


