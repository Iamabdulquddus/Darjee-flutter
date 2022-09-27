import 'dart:ui';

import 'package:flutter/material.dart';

import '../../admin/sidebar/sidebar_widget.dart';
import '../../constants/images.dart';
import '../../constants/style.dart';
import '../../responsive.dart';
import '../content.dart';
import 'components/orders/today_delivery_order.dart';
import 'components/orders/today_orders.dart';
import 'components/orders/today_trail_order.dart';
import 'components/orders/upcoming_delivery_trail_orders.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WidgetWithSidebar(context, cardOfUserTable(context, DashboardView())),
    );
  }
}

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey.shade300,
      width: size.width,
      child: Column(
        children: [

          Responsive.isDesktop(context)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade50,
                          border: Border.all(color: Colors.grey, width: 1),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                width: size.width / 3,
                                color: Color(0xffaaa9ad),
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  'Today\'s Order',
                                  style: MyTextStyles.headingLargeBlack,
                                  overflow: TextOverflow.ellipsis,
                                )),
                            SizedBox(
                                width: size.width / 3,
                                height: 300,
                                child: TodayOrders()),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: wDefaultPadding / 2),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                ),
                                onPressed: () {
                                  //TODO: navigation to all orders form dashboard
                                },
                                child: Text("View all"),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(width: wDefaultPadding,),
                    Expanded(
                      child: Container(
                        height: 400,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade50,
                            border: Border.all(color: Colors.grey, width: 1),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  constraints: BoxConstraints(
                                    maxWidth: size.width
                                  ),
                                    // width: size.width / 2.55,
                                    color: Color(0xffaaa9ad),
                                    padding: EdgeInsets.all(10),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: size.width / 3,
                                          child: Text(
                                            'Upcoming delivery and Trail Orders',
                                            style: MyTextStyles.headingLargeBlack,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              SizedBox(
                                  // width: size.width / 2.55,
                                  height: 300,
                                  child: UpComingDeliveryTrailOrders()),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: wDefaultPadding / 2),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                  ),
                                  onPressed: () {
                                    //TODO: navigation to all orders form dashboard
                                  },
                                  child: Text("View all"),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade50,
                          border: Border.all(color: Colors.grey, width: 1),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                width: size.width / 1.2,
                                color: Color(0xffaaa9ad),
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  'Today\'s Order',
                                  style: MyTextStyles.subHeadingBoldBlack,
                                )),
                            SizedBox(
                                width: size.width / 1.2,
                                height: 300,
                                child: TodayOrders()),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: wDefaultPadding / 2),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                ),
                                onPressed: () {
                                  //TODO: navigation to all orders form dashboard
                                },
                                child: Text("View all"),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(height: wDefaultPadding,),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade50,
                          border: Border.all(color: Colors.grey, width: 1),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                width: size.width / 1.2,
                                color: Color(0xffaaa9ad),
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  'Upcoming delivery and Trail Orders',
                                  style: MyTextStyles.subHeadingBoldBlack,
                                )),
                            SizedBox(
                                width: size.width / 1.2,
                                height: 300,
                                child: UpComingDeliveryTrailOrders()),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: wDefaultPadding / 2),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                ),
                                onPressed: () {
                                  //TODO: navigation to all orders form dashboard
                                },
                                child: Text("View all"),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
          SizedBox(height: wDefaultPadding +10,),
          Responsive.isDesktop(context)
              ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          width: size.width / 3,
                          color: Color(0xffaaa9ad),
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Today\'s Trail Order',
                            style: MyTextStyles.headingLargeBlack,
                          )),
                      SizedBox(
                          width: size.width / 3,
                          height: 300,
                          child: TodayTrailOrders()),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: wDefaultPadding / 2),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                          ),
                          onPressed: () {
                            //TODO: navigation to all orders form dashboard
                          },
                          child: Text("View all"),
                        ),
                      ),
                    ],
                  )),
              SizedBox(width: wDefaultPadding,),
              Expanded(
                child: Container(
                    height: 400,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade50,
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                              constraints: BoxConstraints(
                                  maxWidth: size.width
                              ),
                              // width: size.width / 2.55,
                              color: Color(0xffaaa9ad),
                              padding: EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Text(
                                    'Today\'s delivery Orders',
                                    style: MyTextStyles.headingLargeBlack,
                                  ),
                                ],
                              )),
                        ),
                        SizedBox(
                          // width: size.width / 2.55,
                            height: 300,
                            child: TodayDeliveryOrders()),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: wDefaultPadding / 2),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                            ),
                            onPressed: () {
                              //TODO: navigation to all orders form dashboard
                            },
                            child: Text("View all"),
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          )
              : Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          width: size.width / 1.2,
                          color: Color(0xffaaa9ad),
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Today\'s Trail Order',
                            style: MyTextStyles.subHeadingBoldBlack,
                          )),
                      SizedBox(
                          width: size.width / 1.2,
                          height: 300,
                          child: TodayTrailOrders()),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: wDefaultPadding / 2),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                          ),
                          onPressed: () {
                            //TODO: navigation to all orders form dashboard
                          },
                          child: Text("View all"),
                        ),
                      ),
                    ],
                  )),
              SizedBox(height: wDefaultPadding,),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          width: size.width / 1.2,
                          color: Color(0xffaaa9ad),
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Today\'s delivery Orders',
                            style: MyTextStyles.subHeadingBoldBlack,
                          )),
                      SizedBox(
                          width: size.width / 1.2,
                          height: 300,
                          child: TodayDeliveryOrders()),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: wDefaultPadding / 2),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                          ),
                          onPressed: () {
                            //TODO: navigation to all orders form dashboard
                          },
                          child: Text("View all"),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
          // SizedBox(height: wDefaultPadding +10,),
        ],
      ),
    );
  }
}
