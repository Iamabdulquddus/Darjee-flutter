import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../../../constants/style.dart';
import '../../../../../responsive.dart';
import '../../../../../widgets/date_picker.dart';
import '../../../../../widgets/dropdown.dart';
import '../../../../../widgets/pick_image.dart';
import '../../../../../widgets/textformfeild.dart';

class AddAdmin extends StatelessWidget {
  const AddAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
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
                  '  Add Admin',
                  style: MyTextStyles.headingxSmallBoldWhite,
                ),
              ],
            ),
          ),
          Container(
            width: size.width,
            padding: const EdgeInsets.all(wDefaultPadding),
            color: lightColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                 height: 760,
                 width: Responsive.isDesktop(context)? size.width/2.5 :null,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children:  [
                     Text(
                       'Admin Photo',
                       style: MyTextStyles.subHeadingBoldPrimary,
                     ),
                     const PickImage(),
                     const SizedBox(height: 20,),
                     const CustomTextFormField(
                       maxLines: 1,
                       labelText: 'Full Name',
                       icon: Icon(Icons.person),
                     ),
                     const CustomTextFormField(
                       maxLines: 1,
                       labelText: 'Phone Number',
                       maxLenght: 11,
                       icon: Icon(Icons.call),
                     ),
                     const CustomTextFormField(
                       maxLines: 1,
                       labelText: 'CNIC Number',
                       maxLenght: 13,
                       icon: Icon(Icons.call),
                     ),
                     const DatePicker(
                       labelText: "Registration Date",
                       icon: Icon(Icons.date_range),
                     ),
                     const CustomTextFormField(
                       maxLines: 1,
                       labelText: 'Franchise Name',
                       icon: Icon(Icons.holiday_village_sharp),
                     ),
                     const CustomTextFormField(
                       maxLines: 3,
                       labelText: 'Address',
                       icon: Icon(Icons.home),
                     ),
                    const SizedBox(height: 10,),
                     const CustomDropdown(
                       dropDownTitle: 'Select gender',
                       dropDownItemList: ['male', 'female'], title: 'Gender',
                     ),
                     const CustomDropdown(
                       dropDownTitle: 'select admin role',
                       dropDownItemList: ['Main', 'SubAdmin'], title: 'Select Admin',
                     ),

                   ],
                 ),
                    ),
                // const SizedBox(height: 20,),
                Center(child: ElevatedButton(onPressed: (){}, child: const Text('  Submit  ')),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
