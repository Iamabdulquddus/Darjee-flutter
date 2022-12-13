import 'dart:ui';
import 'package:darjee_flutter/widgets/dropdown.dart';
import 'package:flutter/material.dart';
import '../../../constants/style.dart';
import '../../../model/order_item.dart';
import '../../../responsive.dart';
import '../../generate_order/components/select_item_card.dart';
import 'order_detail_extra.dart';
import 'order_measurement_card.dart';

class OrderDetailForm extends StatelessWidget {
  const OrderDetailForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: Responsive.isDesktop(context) ? 1200 : 1850,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: secondary),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            decoration: const BoxDecoration(
              color: secondary,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.menu_rounded,
                  color: primary,
                ),
                Expanded(
                  child: Text(
                    '  Ahsan',
                    style: MyTextStyles.headingxSmallBoldBlack,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 9,
            child: Container(
              width: size.width,
              padding: const EdgeInsets.all(wDefaultPadding / 2),
              color: lightColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Select Item", style: MyTextStyles.headingxSmallBoldPrimary,),
                  Container(
                    height: 290,
                    width: size.width,
                    padding: const EdgeInsets.all(wDefaultPadding),
                    color: lightColor,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: wDefaultPadding, vertical: wDefaultPadding),
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: List.generate(
                          orderItemList.length,
                              (index) => SelectItemCard(
                            selectItemCard: orderItemList[index],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Responsive.isDesktop(context)
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 750,
                              width: size.width / 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: size.width / 2.5,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: primary,
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text(
                                            'Order Measurement',
                                            style:
                                                MyTextStyles.headingxSmallBoldWhite,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  CustomDropdown(
                                    dropDownTitle: "Measurement by",
                                    dropDownItemList: [
                                      'Ahsan',
                                      'ali',
                                    ],
                                    title: 'Measurement by',
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  OrderMeasurementCard(),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 750,
                              width: size.width / 3,
                              child: OrderDetailsExtra(),
                            ),
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: Responsive.isDesktop(context)
                                  ? size.width / 2.5
                                  : size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: primary,
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      'Order Measurement',
                                      style: MyTextStyles.headingxSmallBoldWhite,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            CustomDropdown(
                              dropDownTitle: "Measurement by",
                              dropDownItemList: [
                                'Ahsan',
                                'ali',
                              ],
                              title: 'Measurement by',
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              // height: 400,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  OrderMeasurementCard(),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(height: 730, child: OrderDetailsExtra()),
                          ],
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
