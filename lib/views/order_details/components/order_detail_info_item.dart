import 'package:darjee_flutter/constants/style.dart';
import 'package:flutter/material.dart';

class OrderDetailInfoItem extends StatelessWidget {
  const OrderDetailInfoItem({Key? key, required this.orderDetailInfoHeading, required this.orderDetailInfoDetail}) : super(key: key);
 final String orderDetailInfoHeading,orderDetailInfoDetail;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.calendar_month, color: primary,),
        Text('  ${orderDetailInfoHeading} : ', style: MyTextStyles.regularBlack,),
        Text(' ${orderDetailInfoDetail}', style: MyTextStyles.subHeadingBoldBlack,),
      ],
    );
  }
}
