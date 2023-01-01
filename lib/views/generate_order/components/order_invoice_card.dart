import 'dart:ui';
import 'package:darjee_flutter/widgets/dropdown.dart';
import 'package:flutter/material.dart';
import '../../../constants/style.dart';
import '../../../responsive.dart';
import 'order_detail_extra.dart';
import 'order_measurement_card.dart';

class OrderInvoiceCard extends StatelessWidget {
  const OrderInvoiceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: Responsive.isDesktop(context) ? 750 : 820,
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
                  '  Order Invoice',
                  style: MyTextStyles.headingxSmallBoldBlack,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 9,
            child: Container(
              width: size.width,
              padding: const EdgeInsets.all(wDefaultPadding/2),
              color: lightColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Text(
                        'Order Invoice',
                        style: MyTextStyles.sectionTitleSmallPrimary,
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black12,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
                    decoration: BoxDecoration(
                      color: secondary.withOpacity(0.4),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          // width: size.width / 6,
                          child: Text(
                            'Customer Name',
                            style: MyTextStyles.subHeadingBoldBlack,
                          ),
                        ),
                        Expanded(
                          // width: size.width / 5,
                          child: Text(
                            'Booking By',
                            style: MyTextStyles.subHeadingBoldBlack,
                          ),
                        ),
                        Expanded(
                          // width: size.width / 8,
                          child: Text(
                            'Date',
                            style: MyTextStyles.subHeadingBoldBlack,
                          ),
                        ),
                        Expanded(
                          // width: size.width / 8,
                          child: Text(
                            'Type',
                            style: MyTextStyles.subHeadingBoldBlack,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 2),

                    child: Row(
                      children: [
                        Expanded(
                          // width: size.width / 6,
                          child: Text(
                            'ahsan',
                            style: MyTextStyles.regularBlack,
                          ),
                        ),
                        Expanded(
                          // width: size.width / 5,
                          child: Text(
                            'Muhammad Hassan Shah',
                            style: MyTextStyles.regularBlack,
                          ),
                        ),
                        Expanded(
                          // width: size.width / 8,
                          child: Text(
                            '12/10/2022',
                            style: MyTextStyles.regularBlack,
                          ),
                        ),
                        Expanded(
                          // width: size.width / 8,
                          child: Text(
                            'Stitching',
                            style: MyTextStyles.regularBlack,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
                    decoration: BoxDecoration(
                      color: secondary.withOpacity(0.4),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          // width: size.width / 6,
                          child: Text(
                            'Items',
                            style: MyTextStyles.subHeadingBoldBlack,
                          ),
                        ),
                        Expanded(
                          // width: size.width / 5,
                          child: Text(
                            'Quantity',
                            style: MyTextStyles.subHeadingBoldBlack,
                          ),
                        ),
                        Expanded(
                          // width: size.width / 8,
                          child: Text(
                            'Price',
                            style: MyTextStyles.subHeadingBoldBlack,
                          ),
                        ),
                        Expanded(
                          // width: size.width / 8,
                          child: Text(
                            '',
                            style: MyTextStyles.subHeadingBoldBlack,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 2),

                          child: Row(
                            children: [
                              Expanded(
                                // width: size.width / 6,
                                child: Text(
                                  'Shalwar kameez',
                                  style: MyTextStyles.regularBlack,
                                ),
                              ),
                              Expanded(
                                // width: size.width / 8,
                                child: Text(
                                  '12',
                                  style: MyTextStyles.regularBlack,
                                ),
                              ),
                              Expanded(
                                // width: size.width / 8,
                                child: Text(
                                  '21600 /-',
                                  style: MyTextStyles.regularBlack,
                                ),
                              ),
                              Expanded(
                                // width: size.width / 5,
                                child: Text(
                                  '',
                                  style: MyTextStyles.regularBlack,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
                    decoration: BoxDecoration(
                      color: secondary.withOpacity(0.4),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          // width: size.width / 6,
                          child: Text(
                            'Design Item',
                            style: MyTextStyles.subHeadingBoldBlack,
                          ),
                        ),
                        Expanded(
                          // width: size.width / 5,
                          child: Text(
                            'Design Option',
                            style: MyTextStyles.subHeadingBoldBlack,
                          ),
                        ),
                        Expanded(
                          // width: size.width / 8,
                          child: Text(
                            'Quantity',
                            style: MyTextStyles.subHeadingBoldBlack,
                          ),
                        ),
                        Expanded(
                          // width: size.width / 8,
                          child: Text(
                            'Price',
                            style: MyTextStyles.subHeadingBoldBlack,
                          ),
                        ),
                        Expanded(
                          // width: size.width / 8,
                          child: Text(
                            'Action',
                            style: MyTextStyles.subHeadingBoldBlack,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 2),

                          child: Row(
                            children: [
                              Expanded(
                                // width: size.width / 6,
                                child: Text(
                                  'شلوار',
                                  style: MyTextStyles.regularBlack,
                                ),
                              ),
                              Expanded(
                                // width: size.width / 8,
                                child: Text(
                                  'جالی اور کانٹا',
                                  style: MyTextStyles.regularBlack,
                                ),
                              ),
                              Expanded(
                                // width: size.width / 8,
                                child: Text(
                                  '1',
                                  style: MyTextStyles.regularBlack,
                                ),
                              ),
                              Expanded(
                                // width: size.width / 5,
                                child: Text(
                                  'Rs.500/-',
                                  style: MyTextStyles.regularBlack,
                                ),
                              ),
                              Expanded(
                                // width: size.width / 5,
                                child: Row(
                                  children: [
                                    IconButton(onPressed: (){}, icon: Icon(Icons.cancel, color: Colors.red,),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Divider(
                    thickness: 1,
                    color: Colors.black12,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Text(
                        'Price',
                        style: MyTextStyles.subHeadingBoldPrimary,
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black12,
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 2),

                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Expanded(
                                // width: size.width / 6,
                                child: Text(
                                  'Subtotal',
                                  style: MyTextStyles.subHeadingBoldBlack,
                                ),
                              ),
                              Expanded(
                                // width: size.width / 8,
                                child: Text(
                                  'Rs.22100/-',
                                  style: MyTextStyles.regularBlack,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Expanded(
                                // width: size.width / 6,
                                child: Text(
                                  'Discount',
                                  style: MyTextStyles.subHeadingBoldBlack,
                                ),
                              ),
                              Expanded(
                                // width: size.width / 8,
                                child: Text(
                                  'Rs.0/-',
                                  style: MyTextStyles.regularBlack,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Expanded(
                                // width: size.width / 6,
                                child: Text(
                                  'Discount Price',
                                  style: MyTextStyles.subHeadingBoldBlack,
                                ),
                              ),
                              Expanded(
                                // width: size.width / 8,
                                child: Text(
                                  'Rs.0/-',
                                  style: MyTextStyles.regularBlack,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Expanded(
                                // width: size.width / 6,
                                child: Text(
                                  'Total',
                                  style: MyTextStyles.subHeadingBoldBlack,
                                ),
                              ),
                              Expanded(
                                // width: size.width / 8,
                                child: Text(
                                  'Rs.22100/-',
                                  style: MyTextStyles.regularBlack,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Center(child: ElevatedButton(onPressed: (){}, child: Text('Submit'),)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
