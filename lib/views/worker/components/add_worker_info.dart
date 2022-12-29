import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../constants/style.dart';
import '../../../responsive.dart';
import '../../../widgets/date_picker.dart';
import '../../../widgets/dropdown.dart';
import '../../../widgets/pick_image.dart';
import '../../../widgets/textformfeild.dart';

class AddWorkerInfo extends StatelessWidget {
  const AddWorkerInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: Responsive.isDesktop(context)?620:1000,
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
                  '  Add Worker Info',
                  style: MyTextStyles.headingxSmallBoldWhite,
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
                  Responsive.isDesktop(context)
                      ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 490,
                        width: size.width / 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Your Photo',
                              style: MyTextStyles.subHeadingBoldPrimary,
                            ),
                            PickImage(),
                            CustomTextFormField(
                              maxLines: 1,
                              labelText: 'Full Name',
                              icon: Icon(Icons.person),
                            ),
                            CustomTextFormField(
                              maxLines: 1,
                              labelText: 'Phone Number',
                              maxLenght: 13,
                              icon: Icon(Icons.call),
                            ),
                            CustomTextFormField(
                              maxLines: 1,
                              labelText: 'CNIC',
                              maxLenght: 13,
                              icon: Icon(Icons.call),
                            ),
                            DatePicker(
                              labelText: "Registratiion Date",
                              icon: Icon(Icons.date_range),
                            ),
                            CustomTextFormField(
                              maxLines: 3,
                              labelText: 'Address',
                              icon: Icon(Icons.home),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 400,
                        width: size.width / 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [

                            CustomTextFormField(
                              maxLines: 1,
                              labelText: 'Reference Name',
                              icon: Icon(Icons.person),
                            ),
                            CustomTextFormField(
                              maxLines: 1,
                              labelText: 'Reference Number',
                              maxLenght: 13,
                              icon: Icon(Icons.call),
                            ),
                            CustomDropdown(
                              dropDownTitle: 'Select gender',
                              dropDownItemList: ['male', 'female'], title: 'Gender',
                            ),
                            CustomDropdown(
                              dropDownTitle: 'Select Worker Type',
                              dropDownItemList: ['Stitching', 'Cutter', 'Master','Dry Cleaner'], title: 'Worker Type',
                            ),
                            CustomDropdown(
                              dropDownTitle: 'Select Salary Type',
                              dropDownItemList: ['Monthly', 'Weekly', 'Commission',], title: 'Worker Salary',
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                      : SizedBox(
                    height: 860,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text(
                          'Your Photo',
                          style: MyTextStyles.subHeadingBoldPrimary,
                        ),
                        PickImage(),
                        CustomTextFormField(
                          maxLines: 1,
                          labelText: 'Full Name',
                          icon: Icon(Icons.person),
                        ),
                        CustomTextFormField(
                          maxLines: 1,
                          labelText: 'Phone Number',
                          maxLenght: 13,
                          icon: Icon(Icons.call),
                        ),
                        CustomTextFormField(
                          maxLines: 1,
                          labelText: 'CNIC',
                          maxLenght: 13,
                          icon: Icon(Icons.call),
                        ),
                        DatePicker(
                          labelText: "Registratiion Date",
                          icon: Icon(Icons.date_range),
                        ),
                        CustomTextFormField(
                          maxLines: 3,
                          labelText: 'Address',
                          icon: Icon(Icons.home),
                        ),

                        CustomTextFormField(
                          maxLines: 1,
                          labelText: 'Reference Name',
                          icon: Icon(Icons.person),
                        ),
                        CustomTextFormField(
                          maxLines: 1,
                          labelText: 'Reference Number',
                          maxLenght: 13,
                          icon: Icon(Icons.call),
                        ),
                        CustomDropdown(
                          dropDownTitle: 'Select gender',
                          dropDownItemList: ['male', 'female'], title: 'Gender',
                        ),
                        CustomDropdown(
                          dropDownTitle: 'Select Worker Type',
                          dropDownItemList: ['Stitching', 'Cutter', 'Master','Dry Cleaner'], title: 'Worker Type',
                        ),
                        CustomDropdown(
                          dropDownTitle: 'Select Salary Type',
                          dropDownItemList: ['Monthly', 'Weekly', 'Commission',], title: 'Worker Salary',
                        ),
                      ],
                    ),
                  ),
                  Center(child: ElevatedButton(onPressed: (){}, child: Text('  Submit  ')),)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
