import 'dart:ui';

import 'package:flutter/material.dart';

import '../../admin/sidebar/sidebar_widget.dart';
import '../../constants/images.dart';
import '../../constants/style.dart';
import '../../responsive.dart';
import '../content.dart';
import '../../widgets/dropdown.dart';

class GenerateOrder extends StatelessWidget {
  const GenerateOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WidgetWithSidebar(
          context, cardOfUserTable(context, const GenerateOrderForm())),
    );
  }
}

class GenerateOrderForm extends StatelessWidget {
  const GenerateOrderForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 600,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: secondary),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: secondary,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
              ),
              child: Row(
                children: [
                  Icon(
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
          ),
          Expanded(
            flex: 9,
            child: Container(
              width: size.width,
              padding: EdgeInsets.all(wDefaultPadding),
              color: lightColor,
              child: Column(
                children: [
                 Responsive.isDesktop(context)?
                 Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomDropdown(
                        dropdownButtonIcon: Icons.person_add_alt,
                        dropDownTitle: 'Select Customer',
                        dropDownItemList: ['Ahsan', 'ali', 'gay', 'joe'],
                      ),
                      CustomDropdown(
                        dropdownButtonIcon: Icons.person_add_alt,
                        dropDownTitle: 'Select Customer',
                        dropDownItemList: ['Ahsan', 'ali', 'gay', 'joe'],
                      ),
                    ],
                  ):
                 Column(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     CustomDropdown(
                       dropdownButtonIcon: Icons.person_add_alt,
                       dropDownTitle: 'Select Customer',
                       dropDownItemList: ['Ahsan', 'ali', 'gay', 'joe'],
                     ),
                     CustomDropdown(
                       dropdownButtonIcon: Icons.person_add_alt,
                       dropDownTitle: 'Select Customer',
                       dropDownItemList: ['Ahsan', 'ali', 'gay', 'joe'],
                     ),
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
