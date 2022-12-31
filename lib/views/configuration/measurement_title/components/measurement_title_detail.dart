import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../../constants/style.dart';
import '../../../../responsive.dart';
import '../../../../widgets/pick_image.dart';
import '../../../../widgets/textformfeild.dart';
import '../../../../admin/sidebar/sidebar_widget.dart';
import '../../../content.dart';

class MeasurementTitleDetail extends StatefulWidget {
  const MeasurementTitleDetail({Key? key}) : super(key: key);

  @override
  State<MeasurementTitleDetail> createState() => _MeasurementTitleDetailState();
}

class _MeasurementTitleDetailState extends State<MeasurementTitleDetail> {
  final List<TextEditingController> _controllers = [TextEditingController()];
  final List<TextEditingController> controllers = [];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    bool isEditable = true;
    bool iseditable = true;
    return Scaffold(
      backgroundColor: snowBackground,
      body: WidgetWithSidebar(
        context,
        cardOfUserTable(
          context,
          Container(
            // height: 850,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: secondary),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
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
                        '  Measurement Title Detail',
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
                      Text('Item Image', style: MyTextStyles.headingxSmallBoldPrimary,),
                      PickImage(),
                      Responsive.isDesktop(context)
                          ? Row(
                              children: [
                                CustomTextFormField(
                                  maxLines: 1,
                                  labelText: 'Item Name',
                                  editable: iseditable,
                                ),
                                CustomTextFormField(
                                  maxLines: 1,
                                  labelText: 'Item Category',
                                  editable: iseditable,
                                ),
                                CustomTextFormField(
                                  maxLines: 1,
                                  labelText: 'Item Price',
                                  editable: iseditable,
                                ),
                              ],
                            )
                          : SizedBox(
                        height: 180,
                            child: Column(
                                children: [
                                  CustomTextFormField(
                                    maxLines: 1,
                                    labelText: 'Item Name',
                                    editable: iseditable,
                                  ),
                                  CustomTextFormField(
                                    maxLines: 1,
                                    labelText: 'Item Category',
                                    editable: iseditable,
                                  ),
                                  CustomTextFormField(
                                    maxLines: 1,
                                    labelText: 'Item Price',
                                    editable: iseditable,
                                  ),
                                ],
                              ),
                          ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            iseditable = !iseditable;
                          });
                        },
                        child: Text('Edit Item Details '),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Add New Measurement Item',
                        style: MyTextStyles.subHeadingBoldPrimary,
                      ),
                      Row(
                        children: [
                          CustomTextFormField(
                            maxLines: 1,
                            labelText: 'Measurement Title',
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _controllers.add(TextEditingController());
                              });
                            },
                            child: Text('Add'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Measurement Titles',
                        style: MyTextStyles.subHeadingBoldPrimary,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 200,
                        child: ListView(
                          children: _controllers.map(
                            (controller) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      CustomTextFormField(
                                        controller: controller,
                                        maxLines: 1,
                                        editable: isEditable,
                                        labelText: 'MeasruementTitle',
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: const Text('Edit'),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.red),
                                        onPressed: () {
                                          setState(() {
                                            _controllers.remove(controller);
                                          });
                                        },
                                        child: const Text('Delete'),
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            },
                          ).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
