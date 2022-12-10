import 'dart:ui';
import 'package:darjee_flutter/widgets/dropdown.dart';
import 'package:flutter/material.dart';
import '../../../constants/style.dart';
import '../../../responsive.dart';
import 'order_detail_extra.dart';
import 'order_measurement_card.dart';


class OrderDetailForm extends StatelessWidget {
  const OrderDetailForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: Responsive.isDesktop(context)? 800 : 1500,
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
                Text(
                  '  Order Details',
                  style: MyTextStyles.headingxSmallBoldBlack,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 9,
            child: Container(
              width: size.width,
              padding: const EdgeInsets.all(wDefaultPadding),
              color: lightColor,
              child:Responsive.isDesktop(context)?
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 750,
                    width: size.width/3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: size.width/2.5,
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
                        SizedBox(height: 20,),
                        CustomDropdown(
                          dropDownTitle: "Measurement by",
                          dropDownItemList: [
                            'Ahsan',
                            'ali',
                          ],
                          title: 'Measurement by',),
                        SizedBox(height: 20,),
                        SizedBox(
                          height: 500,
                          child: ListView(
                            children: [
                              OrderMeasurementCard(),
                              SizedBox(height: 20,),
                              OrderMeasurementCard(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 750,
                    width: size.width/3,
                    child: OrderDetailsExtra(),
                  ),
                ],
              ) :
              Column(
                children: [
                  SizedBox(
                    height: 700,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: Responsive.isDesktop(context) ? size.width/2.5: size.width,
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
                        SizedBox(height: 20,),
                        CustomDropdown(
                          dropDownTitle: "Measurement by",
                          dropDownItemList: [
                            'Ahsan',
                            'ali',
                          ],
                          title: 'Measurement by',),
                        SizedBox(height: 20,),
                        SizedBox(
                          height: 500,
                          child: ListView(
                            children: [
                              OrderMeasurementCard(),
                              SizedBox(height: 20,),
                              OrderMeasurementCard(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  OrderDetailsExtra(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
