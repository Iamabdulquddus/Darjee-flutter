import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../../constants/style.dart';
import '../../../../responsive.dart';
import '../../../../widgets/date_picker.dart';
import '../../../../widgets/dropdown.dart';
import '../../../../widgets/pick_image.dart';
import '../../../../widgets/textformfeild.dart';

class AddWorkerSalary extends StatelessWidget {
  const AddWorkerSalary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 400,
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
                  '  Add Worker Salary',
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CustomDropdown(
                        dropDownTitle: 'Select Worker Type',
                        dropDownItemList: ['Ahsan', 'ali', 'gay', 'joe'], title: 'Worker Type',
                      ),
                      CustomDropdown(
                        dropDownTitle: 'Select Worker Type First',
                        dropDownItemList: ['Ahsan', 'ali', 'gay', 'joe'], title: 'Worker Type First',
                      ),
                      CustomDropdown(
                        dropDownTitle: 'Select Worker Name First',
                        dropDownItemList: ['Ahsan', 'ali', 'gay', 'joe'], title: 'Worker Name First',
                      ),
                    ],
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('  Submit  '),
                    ),
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
