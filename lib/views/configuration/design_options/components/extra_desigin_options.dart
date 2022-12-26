import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../../constants/style.dart';
import '../../../../responsive.dart';
import '../../../../widgets/date_picker.dart';
import '../../../../widgets/dropdown.dart';
import '../../../../widgets/pick_image.dart';
import '../../../../widgets/textformfeild.dart';

class ExtraDesignOptions extends StatelessWidget {
  const ExtraDesignOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: Responsive.isDesktop(context) ? 200 : 300,
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
                  Responsive.isDesktop(context)
                      ? Row(
                          children: const [
                            CustomTextFormField(
                              maxLines: 1,
                              labelText: 'Design Item',
                              icon: Icon(Icons.person),
                            ),
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
                        )
                      : SizedBox(
                          height: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              CustomTextFormField(
                                maxLines: 1,
                                labelText: 'Design Item',
                                icon: Icon(Icons.person),
                              ),
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
