import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../../../../constants/style.dart';
import '../../../../../../responsive.dart';
import '../../../../widgets/textformfeild.dart';

class CommissionWorkerDetail extends StatelessWidget {
  const CommissionWorkerDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      // height: 620,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: secondary),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            decoration: const BoxDecoration(
              color: primary,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                Text(
                  '  Worker Detail',
                  style: MyTextStyles.headingxSmallBoldWhite,
                ),
              ],
            ),
          ),
          Container(
            width: size.width,
            padding: const EdgeInsets.all(wDefaultPadding / 2),
            color: lightColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Responsive.isDesktop(context)
                    ? Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: primary, width: 2),
                              ),
                              child: ClipOval(
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Image.asset(
                                    'assets/icons/avatar.png',
                                    height: 170,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(child: workerDetailCard()),
                        ],
                      )
                    : Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: primary, width: 2),
                              ),
                              child: ClipOval(
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Image.asset(
                                    'assets/icons/avatar.png',
                                    height: 170,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          workerDetailCardSmall(),
                        ],
                      ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                    height: 150,
                    // width: MediaQuery.of(context).size.width / 3,
                    child: workerAdvanceCard()),
                // Responsive.isDesktop(context)
                //     ? Padding(
                //         padding: const EdgeInsets.all(8.0),
                //         child: Row(
                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           children: [
                //             SizedBox(
                //                 width: Responsive.isDesktop(context)
                //                     ? MediaQuery.of(context).size.width / 3
                //                     : null,
                //                 child: workerDetailCard()),

                //           ],
                //         ),
                //       )
                //     : Column(
                //         children: [
                //           workerDetailCard(),
                //           workerAdvanceCard(),
                //         ],
                //       ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget workerAdvanceCard() {
  return Card(
    color: lightColor,
    shadowColor: secondary,
    elevation: 5,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomTextFormField(
                maxLines: 1,
                labelText: "Add Advance",
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Add Advance'),
          ),
        ],
      ),
    ),
  );
}

Widget workerDetailCard() {
  return Card(
    color: lightColor,
    elevation: 5,
    shadowColor: secondary,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Table(
        border: TableBorder.all(width: 0, color: lightColor),
        defaultColumnWidth: FlexColumnWidth(1.0),
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text('Full Name',
                      style: MyTextStyles.subHeadingBoldPrimary),
                ),
              ),
              TableCell(
                child: Text(
                  'Joe Goldberg',
                  style: MyTextStyles.regularPrimary,
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text('Registration Date',
                      style: MyTextStyles.subHeadingBoldPrimary),
                ),
              ),
              TableCell(
                child: Text(
                  '12-28-2020',
                  style: MyTextStyles.regularPrimary,
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text('Phone Number',
                      style: MyTextStyles.subHeadingBoldPrimary),
                ),
              ),
              TableCell(
                child: Text(
                  '+923001234567',
                  style: MyTextStyles.regularPrimary,
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text('CNIC Number',
                      style: MyTextStyles.subHeadingBoldPrimary),
                ),
              ),
              TableCell(
                child: Text(
                  '38404-12345678-9',
                  style: MyTextStyles.regularPrimary,
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child:
                      Text('Gender', style: MyTextStyles.subHeadingBoldPrimary),
                ),
              ),
              TableCell(
                child: Text(
                  'Male',
                  style: MyTextStyles.regularPrimary,
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text('Reference Name',
                      style: MyTextStyles.subHeadingBoldPrimary),
                ),
              ),
              TableCell(
                child: Text(
                  'Love Quinn',
                  style: MyTextStyles.regularPrimary,
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text('Reference Number',
                      style: MyTextStyles.subHeadingBoldPrimary),
                ),
              ),
              TableCell(
                child: Text(
                  '+923001234567',
                  style: MyTextStyles.regularPrimary,
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text('Worker Type',
                      style: MyTextStyles.subHeadingBoldPrimary),
                ),
              ),
              TableCell(
                child: Text(
                  'Master',
                  style: MyTextStyles.regularPrimary,
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text('Salary Type',
                      style: MyTextStyles.subHeadingBoldPrimary),
                ),
              ),
              TableCell(
                child: Text(
                  'Commission',
                  style: MyTextStyles.regularPrimary,
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text('Address',
                      style: MyTextStyles.subHeadingBoldPrimary),
                ),
              ),
              TableCell(
                child: Text(
                  'The address should be of two lines max ... so The address should be of two lines max ... soThe address should be of two lines max so',
                  style: MyTextStyles.regularPrimary,
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text('Amount to pay',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red)),
                ),
              ),
              TableCell(
                child: Text('PKR 5000/-',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.red)),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text('',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red)),
                ),
              ),
              TableCell(
                child: Text('',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.red)),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget workerDetailCardSmall() {
  return Card(
    color: lightColor,
    elevation: 5,
    shadowColor: secondary,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Table(
        border: TableBorder.all(width: 0, color: lightColor),
        defaultColumnWidth: FlexColumnWidth(1.0),
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text('Full Name',
                      style: MyTextStyles.subHeadingBoldPrimary),
                ),
              ),
              TableCell(
                child: Text(
                  'Joe Goldberg',
                  style: MyTextStyles.regularPrimary,
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text('Registration Date',
                      style: MyTextStyles.subHeadingBoldPrimary),
                ),
              ),
              TableCell(
                child: Text(
                  '12-28-2020',
                  style: MyTextStyles.regularPrimary,
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text('Phone Number',
                      style: MyTextStyles.subHeadingBoldPrimary),
                ),
              ),
              TableCell(
                child: Text(
                  '+923001234567',
                  style: MyTextStyles.regularPrimary,
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text('CNIC Number',
                      style: MyTextStyles.subHeadingBoldPrimary),
                ),
              ),
              TableCell(
                child: Text(
                  '38404-12345678-9',
                  style: MyTextStyles.regularPrimary,
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child:
                  Text('Gender', style: MyTextStyles.subHeadingBoldPrimary),
                ),
              ),
              TableCell(
                child: Text(
                  'Male',
                  style: MyTextStyles.regularPrimary,
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text('Reference Name',
                      style: MyTextStyles.subHeadingBoldPrimary),
                ),
              ),
              TableCell(
                child: Text(
                  'Love Quinn',
                  style: MyTextStyles.regularPrimary,
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text('Reference Number',
                      style: MyTextStyles.subHeadingBoldPrimary),
                ),
              ),
              TableCell(
                child: Text(
                  '+923001234567',
                  style: MyTextStyles.regularPrimary,
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text('Worker Type',
                      style: MyTextStyles.subHeadingBoldPrimary),
                ),
              ),
              TableCell(
                child: Text(
                  'Master',
                  style: MyTextStyles.regularPrimary,
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text('Salary Type',
                      style: MyTextStyles.subHeadingBoldPrimary),
                ),
              ),
              TableCell(
                child: Text(
                  'Commission',
                  style: MyTextStyles.regularPrimary,
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text('Address',
                      style: MyTextStyles.subHeadingBoldPrimary),
                ),
              ),
              TableCell(
                child: Text(
                  'The address should be of two lines max ... so The address should be of two lines max ... soThe address should be of two lines max so',
                  style: MyTextStyles.regularPrimary,
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text('Amount to pay',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red)),
                ),
              ),
              TableCell(
                child: Text('PKR 5000/-',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.red)),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
