import 'package:flutter/material.dart';

import '../../../constants/style.dart';
import '../../../responsive.dart';
import '../../../widgets/dropdown.dart';
import '../../../widgets/textformfeild.dart';
import 'order_detail_info_item.dart';

class OrderDetailsExtra extends StatelessWidget {
  const OrderDetailsExtra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: Responsive.isDesktop(context) ? size.width / 2.5 : size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: primary,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Quantity Of Item',
                  style: MyTextStyles.headingxSmallBoldWhite,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        CustomTextFormField(
          maxLines: 1,
          labelText: 'Discount',
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Add Discount'),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: Responsive.isDesktop(context) ? size.width / 2.5 : size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: primary,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Darjee Kurta VIP',
                  style: MyTextStyles.headingxSmallBoldWhite,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        OrderDetailInfoItem(
          orderDetailInfoHeading: 'ORDER DATE',
          orderDetailInfoDetail: '12/08/2022',
        ),
        OrderDetailInfoItem(
          orderDetailInfoHeading: 'TRIAL DATE',
          orderDetailInfoDetail: 'No Trial Date',
        ),
        OrderDetailInfoItem(
          orderDetailInfoHeading: 'EXPECTED DELIVERY DATE',
          orderDetailInfoDetail: 'No Trial Date',
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: Responsive.isDesktop(context) ? size.width / 2.5 : size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: primary,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Customer Name',
                  style: MyTextStyles.headingxSmallBoldWhite,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        OrderDetailInfoItem(
          orderDetailInfoHeading: 'ADDRESS',
          orderDetailInfoDetail: '12/08/2022',
        ),
        OrderDetailInfoItem(
          orderDetailInfoHeading: 'CONTACT NO',
          orderDetailInfoDetail: 'No Trial Date',
        ),
        SizedBox(
          height: 20,
        ),
        CustomDropdown(
          dropDownTitle: 'Select Payment Option',
          dropDownItemList: ['Credit card', 'Jazz cash', 'COD', 'Classified'],
          title: 'Payment Option',
        ),
        CustomDropdown(
          dropDownTitle: 'Select Payment Type',
          dropDownItemList: ['Full Pay', 'Self pay'],
          title: 'Payment Type',
        ),
        CustomDropdown(
          dropDownTitle: 'Select Recording Options',
          dropDownItemList: ['Audio', 'Video'],
          title: 'Recording Options',
        ),
      ],
    );
  }
}
