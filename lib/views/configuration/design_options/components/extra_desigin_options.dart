import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../../constants/style.dart';
import '../../../../responsive.dart';
import '../../../../widgets/date_picker.dart';
import '../../../../widgets/dropdown.dart';
import '../../../../widgets/pick_image.dart';
import '../../../../widgets/textformfeild.dart';

class ExtraDesignOptions extends StatefulWidget {
  const ExtraDesignOptions({Key? key}) : super(key: key);

  @override
  State<ExtraDesignOptions> createState() => _ExtraDesignOptionsState();
}

class _ExtraDesignOptionsState extends State<ExtraDesignOptions> {

  final List<TextEditingController> controllers = [];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 630,
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
                  '  Add Extra Design Options',
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
                  CustomTextFormField(
                    maxLines: 1,
                    labelText: 'Design Item',
                    icon: Icon(Icons.person),
                  ),

                  SizedBox(height: 20,),
                  Text(
                    'Extra Design Options',
                    style: MyTextStyles.subHeadingBoldPrimary,
                  ),
                  Row(
                    children: [
                      CustomTextFormField(
                        maxLines: 1,
                        labelText: 'Option',
                        icon: Icon(Icons.add_box_rounded),
                      ),
                      CustomTextFormField(
                        maxLines: 1,
                        labelText: 'price',
                        icon: Icon(Icons.money),
                      ),
                    ],
                  ),
                  ElevatedButton(onPressed: (){ setState(() {
                    controllers.add(TextEditingController());
                  });}, child: Text(' Add '),),
                  SizedBox(height: 20,),
                  SizedBox(
                    height: 300,
                    child: controllers.isEmpty
                        ? SizedBox(

                    )
                        : ListView(
                      children: controllers.map((controller) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CustomTextFormField(
                                  controller: controller,
                                  maxLines: 1,
                                  editable: false,
                                  labelText: 'Option',
                                ),
                                CustomTextFormField(
                                  controller: controller,
                                  maxLines: 1,
                                  editable: false,
                                  labelText: 'Price',
                                  keyboardType: TextInputType.phone,
                                ),
                                SizedBox(width: 10,),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red),
                                  onPressed: () {
                                    setState(() {
                                      controllers.remove(controller);
                                    });
                                  },
                                  child: Text('Delete'),
                                ),
                              ],
                            ),
                          ],
                        );
                      }).toList(),
                    ),
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
