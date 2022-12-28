import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../../../../constants/style.dart';
import '../../../../../../responsive.dart';



class CommissionWorkerDetail extends StatelessWidget {
  const CommissionWorkerDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 620,
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
          Expanded(
            flex: 9,
            child: Container(
              width: size.width,
              padding: const EdgeInsets.all(wDefaultPadding/2),
              color: lightColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: primary.withOpacity(0.1),
                            blurRadius: 10,
                            spreadRadius: 5,
                            offset: Offset(5, 5),
                          ),
                          BoxShadow(
                            color: lightColor.withOpacity(0.5),
                            blurRadius: 5,
                            spreadRadius: 5,
                            offset: Offset(-5, -5),
                          ),
                        ],
                        // border: Border.all(color: primary.withOpacity(0.1), width: 5),
                      ),
                      child: ClipOval(
                        child: Padding(

                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset('assets/icons/avatar.png', height: 170, fit: BoxFit.cover, ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Table(
                    border: TableBorder.all(width: 0, color: lightColor),
                    defaultColumnWidth: FlexColumnWidth(1.0),
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      TableRow(
                        children: [
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Text('Full Name', style: MyTextStyles.subHeadingBoldPrimary),
                            ),
                          ),
                          TableCell(
                            child: Text('Joe Goldberg', style: MyTextStyles.regularPrimary,),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Text('Registration Date', style: MyTextStyles.subHeadingBoldPrimary),
                            ),
                          ),
                          TableCell(
                            child: Text('12-28-2020', style: MyTextStyles.regularPrimary,),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Text('Phone Number', style: MyTextStyles.subHeadingBoldPrimary),
                            ),
                          ),
                          TableCell(
                            child: Text('+923001234567', style: MyTextStyles.regularPrimary,),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Text('CNIC Number', style: MyTextStyles.subHeadingBoldPrimary),
                            ),
                          ),
                          TableCell(
                            child: Text('38404-12345678-9', style: MyTextStyles.regularPrimary,),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Text('CNIC Number', style: MyTextStyles.subHeadingBoldPrimary),
                            ),
                          ),
                          TableCell(
                            child: Text('38404-12345678-9', style: MyTextStyles.regularPrimary,),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Text('Gender', style: MyTextStyles.subHeadingBoldPrimary),
                            ),
                          ),
                          TableCell(
                            child: Text('Male', style: MyTextStyles.regularPrimary,),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Text('Reference Name', style: MyTextStyles.subHeadingBoldPrimary),
                            ),
                          ),
                          TableCell(
                            child: Text('Love Quinn', style: MyTextStyles.regularPrimary,),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Text('Reference Number', style: MyTextStyles.subHeadingBoldPrimary),
                            ),
                          ),
                          TableCell(
                            child: Text('+923001234567', style: MyTextStyles.regularPrimary,),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Text('Worker Type', style: MyTextStyles.subHeadingBoldPrimary),
                            ),
                          ),
                          TableCell(
                            child: Text('Master', style: MyTextStyles.regularPrimary,),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Text('Salary Type', style: MyTextStyles.subHeadingBoldPrimary),
                            ),
                          ),
                          TableCell(
                            child: Text('Commission', style: MyTextStyles.regularPrimary,),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Text('Address', style: MyTextStyles.subHeadingBoldPrimary),
                            ),
                          ),
                          TableCell(
                            child: Text('The address should be of two lines max ... so The address should be of two lines max ... soThe address should be of two lines max ...  so', style: MyTextStyles.regularPrimary, maxLines: 3, overflow: TextOverflow.ellipsis,),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Text('Amount to pay', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red)),
                            ),
                          ),
                          TableCell(
                            child: Text('PKR 5000/-', style:  TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.red) ),
                          ),
                        ],
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

