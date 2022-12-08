import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../constants/style.dart';
import '../../../responsive.dart';
import '../../../widgets/date_picker.dart';
import '../../../widgets/dropdown.dart';
import '../../../widgets/pick_image.dart';
import '../../../widgets/textformfeild.dart';

class AddCustomerInfo extends StatelessWidget {
  const AddCustomerInfo({Key? key}) : super(key: key);

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
                  '  Add Customer Info',
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
                                  DatePicker(
                                    labelText: "Birth Date",
                                    icon: Icon(Icons.cake),
                                  ),
                                  DatePicker(
                                    labelText: "Anniversary",
                                    icon: Icon(Icons.cake),
                                  ),
                                  DatePicker(
                                    labelText: "Registration Date",
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
                                    labelText: 'Reference Name',
                                    icon: Icon(Icons.person),
                                  ),
                                  CustomTextFormField(
                                    maxLines: 1,
                                    labelText: 'Reference Number',
                                    maxLenght: 13,
                                    icon: Icon(Icons.call),
                                  ),
                                  CustomTextFormField(
                                    maxLines: 1,
                                    labelText: 'Opening Balance',
                                  ),
                                  CustomDropdown(
                                    dropDownTitle: 'Select gender',
                                    dropDownItemList: ['male', 'female'], title: 'Gender',
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
                              DatePicker(
                                labelText: "Birth Date",
                                icon: Icon(Icons.cake),
                              ),
                              DatePicker(
                                labelText: "Anniversary",
                                icon: Icon(Icons.cake),
                              ),
                              DatePicker(
                                labelText: "Registration Date",
                                icon: Icon(Icons.date_range),
                              ),
                              CustomTextFormField(
                                maxLines: 3,
                                labelText: 'Address',
                                icon: Icon(Icons.home),
                              ),
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
                                labelText: 'Reference Name',
                                icon: Icon(Icons.person),
                              ),
                              CustomTextFormField(
                                maxLines: 1,
                                labelText: 'Reference Number',
                                maxLenght: 13,
                                icon: Icon(Icons.call),
                              ),
                              CustomTextFormField(
                                maxLines: 1,
                                labelText: 'Opening Balance',
                              ),
                              CustomDropdown(
                                dropDownTitle: 'Select gender',
                                dropDownItemList: const ['male', 'female'], title: 'Gender',
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
