import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../../constants/style.dart';
import '../../../../responsive.dart';
import '../../../../widgets/textformfeild.dart';
import '../../../../admin/sidebar/sidebar_widget.dart';
import '../../../content.dart';

class ViewDesignOptions extends StatefulWidget {
  const ViewDesignOptions({Key? key}) : super(key: key);

  @override
  State<ViewDesignOptions> createState() => _ViewDesignOptionsState();
}

class _ViewDesignOptionsState extends State<ViewDesignOptions> {
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
            height: 650,
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
                        '  Design Options Details',
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
                        Row(
                          children: [
                            CustomTextFormField(
                              maxLines: 1,
                              labelText: 'قمیض',
                              editable: iseditable,
                            ),
                            SizedBox(width: 20,),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  iseditable = !iseditable;
                                });
                              },
                              child: Text('Edit Item Details '),
                            ),
                          ],
                        ),
                        Text(
                          'Add New Design Option',
                          style: MyTextStyles.subHeadingBoldPrimary,
                        ),
                        Row(
                          children: [
                            CustomTextFormField(
                              maxLines: 1,
                              labelText: 'Item name',
                            ),
                            CustomTextFormField(
                              maxLines: 1,
                              labelText: 'Price',
                              keyboardType: TextInputType.phone,
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _controllers.add(TextEditingController());
                            });
                          },
                          child: Text('Add'),
                        ),
                        Text(
                          'Design Options with Prices',
                          style: MyTextStyles.subHeadingBoldPrimary,
                        ),
                        SizedBox(
                          height: 300,
                          child: ListView(
                            children: _controllers.map((controller) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      CustomTextFormField(
                                        controller: controller,
                                        maxLines: 1,
                                        editable: isEditable,
                                        labelText: 'Item name',
                                      ),
                                      CustomTextFormField(
                                        controller: controller,
                                        maxLines: 1,
                                        editable: isEditable,
                                        labelText: 'Price',
                                        keyboardType: TextInputType.phone,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: Text('Edit'),
                                      ),
                                      SizedBox(
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
          ),
        ),
      ),
    );
  }
}

class NewDesignItem extends StatelessWidget {
  const NewDesignItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomTextFormField(
              maxLines: 1,
              labelText: 'Item name',
            ),
            CustomTextFormField(
              maxLines: 1,
              labelText: 'Price',
              keyboardType: TextInputType.phone,
            ),
          ],
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('Edit'),
            ),
            SizedBox(
              width: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {},
              child: Text('Delete'),
            ),
          ],
        ),
      ],
    );
  }
}
