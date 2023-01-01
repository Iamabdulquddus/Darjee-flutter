import 'dart:ui';
import 'package:darjee_flutter/widgets/dropdown.dart';
import 'package:flutter/material.dart';
import '../../../../constants/style.dart';
import '../../../../widgets/textformfeild.dart';
import '../../../generate_order/components/other_measurement_radio_button.dart';

class AddMeasurements extends StatefulWidget {
  const AddMeasurements({Key? key}) : super(key: key);

  @override
  State<AddMeasurements> createState() => _AddMeasurementsState();
}

class _AddMeasurementsState extends State<AddMeasurements> {
  bool isSearch = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      // height: 200,
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
                  Icons.book,
                  color: Colors.white,
                ),
                Text(
                  '  Add Measurements',
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
                const CustomDropdown(
                    dropDownTitle: 'Select item',
                    dropDownItemList: ['Shalwar Kameez', '3 piece'],
                    title: 'Select Item'),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    CustomTextFormField(
                      maxLines: 1,
                      labelText: 'قمیض لمبائی ',
                      keyboardType: TextInputType.phone,
                    ),
                    CustomTextFormField(
                      maxLines: 1,
                      labelText: 'تیرا',
                      keyboardType: TextInputType.phone,
                    ),
                    CustomTextFormField(
                      maxLines: 1,
                      labelText: 'بازو',
                      keyboardType: TextInputType.phone,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CustomTextFormField(
                      maxLines: 1,
                      labelText: 'چھاتی',
                      keyboardType: TextInputType.phone,
                    ),
                    CustomTextFormField(
                      maxLines: 1,
                      labelText: 'گلا',
                      keyboardType: TextInputType.phone,
                    ),
                    CustomTextFormField(
                      maxLines: 1,
                      labelText: 'ہپ',
                      keyboardType: TextInputType.phone,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CustomTextFormField(
                      maxLines: 1,
                      labelText: 'کندھا',
                      keyboardType: TextInputType.phone,
                    ),
                    CustomTextFormField(
                      maxLines: 1,
                      labelText: 'کہنی سے',
                      keyboardType: TextInputType.phone,
                    ),
                    CustomTextFormField(
                      maxLines: 1,
                      labelText: 'کف لمبائی',
                      keyboardType: TextInputType.phone,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CustomTextFormField(
                      maxLines: 1,
                      labelText: 'شلوار لمبائی',
                      keyboardType: TextInputType.phone,
                    ),
                    CustomTextFormField(
                      maxLines: 1,
                      labelText: 'شلوار گھیرا',
                      keyboardType: TextInputType.phone,
                    ),
                    CustomTextFormField(
                      maxLines: 1,
                      labelText: 'پائنچہ',
                      keyboardType: TextInputType.phone,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CustomTextFormField(
                      maxLines: 1,
                      labelText: 'آسن',
                      keyboardType: TextInputType.phone,
                    ),
                    CustomTextFormField(
                      maxLines: 1,
                      labelText: 'ٹراوزرا',
                      keyboardType: TextInputType.phone,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: primary.withOpacity(0.5),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Other Measurement Options for Shalwar Kameez',
                          style: MyTextStyles.regularWhite,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Wrap(
                  alignment: WrapAlignment.start,
                  runSpacing: 10,
                  spacing: 10,
                  children: [
                    OtherMeasurementRadioButton(
                      otherMeasurementText: 'فٹنگ',
                      check: false,
                    ),
                    OtherMeasurementRadioButton(
                      otherMeasurementText: 'شولڈر ڈاون',
                      check: false,
                    ),
                    OtherMeasurementRadioButton(
                      otherMeasurementText: 'بازو فل کٹنگ',
                      check: false,
                    ),
                    OtherMeasurementRadioButton(
                      otherMeasurementText: 'بازو لو ز فٹنگ',
                      check: false,
                    ),
                    OtherMeasurementRadioButton(
                      otherMeasurementText: 'فرنٹ لوز',
                      check: false,
                    ),
                    OtherMeasurementRadioButton(
                      otherMeasurementText: 'بیک لوز',
                      check: false,
                    ),
                    OtherMeasurementRadioButton(
                      otherMeasurementText: 'فرنٹ رول',
                      check: false,
                    ),
                    OtherMeasurementRadioButton(
                      otherMeasurementText: 'قميض فرنٹ کٹنگ',
                      check: false,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: (){}, child: Text('Submit'),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
