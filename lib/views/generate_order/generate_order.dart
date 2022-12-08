import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../admin/sidebar/sidebar_widget.dart';
import '../../constants/style.dart';
import '../../responsive.dart';
import '../../routes/routes.dart';
import '../../widgets/date_picker.dart';
import '../../widgets/textformfeild.dart';
import '../content.dart';
import '../../widgets/dropdown.dart';
import 'package:flutter/cupertino.dart';

class GenerateOrder extends StatefulWidget {
  const GenerateOrder({Key? key}) : super(key: key);

  @override
  State<GenerateOrder> createState() => _GenerateOrderState();
}

class _GenerateOrderState extends State<GenerateOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WidgetWithSidebar(
          context, cardOfUserTable(context, const GenerateOrderForm())),
    );
  }
}

class GenerateOrderForm extends StatefulWidget {
  const GenerateOrderForm({Key? key}) : super(key: key);

  @override
  State<GenerateOrderForm> createState() => _GenerateOrderFormState();
}

class _GenerateOrderFormState extends State<GenerateOrderForm> {
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: Responsive.isDesktop(context) ? 540 : 850,
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
                  Icons.person,
                  color: Colors.black,
                ),
                Text(
                  '  Generate Order',
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
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Responsive.isDesktop(context)
                        ? Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 400,
                                width: size.width / 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:  [
                                    const CustomDropdown(
                                      dropDownTitle: 'Select Customer',
                                      dropDownItemList: [
                                        'Ahsan',
                                        'Ali',
                                      ],
                                      title: 'Customer',
                                    ),
                                    const CustomDropdown(
                                      dropDownTitle: 'Select Worker',
                                      dropDownItemList: [
                                        'Ahsan',
                                        'Ali',
                                      ],
                                      title: 'Booking by',
                                    ),
                                    const CustomDropdown(
                                      dropDownTitle: 'Select order type',
                                      dropDownItemList: [
                                        'Ahsan',
                                        'Ali',
                                      ],
                                      title: 'Order Type',
                                    ),
                                    const CustomDropdown(
                                      dropDownTitle: 'Select Order Status',
                                      dropDownItemList: [
                                        'Ahsan',
                                        'Ali',
                                      ],
                                      title: 'Order Status',
                                    ),
                                   const Text(
                                       'Dry Clean',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                   ),
                                    const SizedBox(height: 10,),
                                    CupertinoSwitch(
                                      activeColor: primary,
                                      value: _switchValue,
                                      onChanged: (value) {
                                        setState(() {
                                          _switchValue = value;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 330,
                                width: size.width / 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    CustomTextFormField(
                                      maxLines: 1,
                                      labelText: 'Order ID',
                                      icon: Icon(Icons.edit),
                                    ),
                                    CustomTextFormField(
                                      maxLines: 1,
                                      labelText: 'Order Book No',
                                      icon: Icon(Icons.book),
                                    ),
                                    DatePicker(
                                      labelText: 'Order Date',
                                      icon: Icon(Icons.calendar_month),
                                    ),
                                    DatePicker(
                                      labelText: 'Trial Date',
                                      icon: Icon(Icons.calendar_month),
                                    ),
                                    DatePicker(
                                      labelText: 'Expected Delivery Date',
                                      icon: Icon(Icons.calendar_month),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        : SizedBox(
                            height: 700,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:  [
                                const CustomDropdown(
                                  dropDownTitle: 'Select Customer',
                                  dropDownItemList: [
                                    'Ahsan',
                                    'Ali',
                                  ],
                                  title: 'Customer',
                                ),
                                const CustomDropdown(
                                  dropDownTitle: 'Select Worker',
                                  dropDownItemList: [
                                    'Ahsan',
                                    'Ali',
                                  ],
                                  title: 'Booking by',
                                ),
                                const CustomDropdown(
                                  dropDownTitle: 'Select order type',
                                  dropDownItemList: [
                                    'Ahsan',
                                    'Ali',
                                  ],
                                  title: 'Order Type',
                                ),

                                const CustomDropdown(
                                  dropDownTitle: 'Select Order Status',
                                  dropDownItemList: [
                                    'Ahsan',
                                    'Ali',
                                  ],
                                  title: 'Order Status',
                                ),
                                const CustomTextFormField(
                                  maxLines: 1,
                                  labelText: 'Order ID',
                                  icon: Icon(Icons.edit),
                                ),
                                const CustomTextFormField(
                                  maxLines: 1,
                                  labelText: 'Order Book No',
                                  icon: Icon(Icons.book),
                                ),
                                const DatePicker(
                                  labelText: 'Order Date',
                                  icon: Icon(Icons.calendar_month),
                                ),
                                const DatePicker(
                                  labelText: 'Trial Date',
                                  icon: Icon(Icons.calendar_month),
                                ),
                                const DatePicker(
                                  labelText: 'Expected Delivery Date',
                                  icon: Icon(Icons.calendar_month),
                                ),
                                const Text(
                                  'Dry Clean',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 10,),
                                CupertinoSwitch(
                                  activeColor: primary,
                                  value: _switchValue,
                                  onChanged: (value) {
                                    setState(() {
                                      _switchValue = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                    Center(
                      child: ElevatedButton(
                          onPressed: () {
                            Get.toNamed(MyRoutes.getSelectItem());
                          }, child: const Text('  Proceed to order  '),),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
