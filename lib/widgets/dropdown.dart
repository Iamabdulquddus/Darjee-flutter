import 'package:darjee_flutter/constants/style.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../responsive.dart';

class CustomDropdown extends StatefulWidget {
  const CustomDropdown(
      {Key? key,
      required this.dropDownTitle,
      required this.dropDownItemList,
      required this.title,
      required this.dropdownButtonIcon})
      : super(key: key);
  final String dropDownTitle, title;
  final List dropDownItemList;
  final IconData dropdownButtonIcon;
  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? selected;
  bool iconColorChanged = false;
  // late List items ;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: MyTextStyles.headingxSmallBoldBlack,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            AnimatedContainer(
              decoration: const BoxDecoration(

                  // color: lightColor,
                  boxShadow: [
                    BoxShadow(
                      color: secondary,
                      offset: Offset(2, 2),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                    BoxShadow(
                      color: Colors.white60,
                      offset: Offset(-2, -2),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ]),
              // padding: EdgeInsets.all(10),
              duration: const Duration(seconds: 1),
              child: IconButton(
                color: iconColorChanged ? Colors.red : primary,
                iconSize: 20,
                onPressed: () {
                  setState(() {
                    iconColorChanged = !iconColorChanged;
                  });
                  //TODO: The navigation to dropdown side button
                },
                icon: Icon(
                  widget.dropdownButtonIcon,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            DropdownButton2(
              isExpanded: true,
              hint: Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.dropDownTitle,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              items: widget.dropDownItemList
                  .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ))
                  .toList(),
              value: selected,
              onChanged: (value) {
                setState(() {
                  selected = value as String;
                });
              },
              buttonHeight: 40,
              buttonWidth: Responsive.isDesktop(context)
                  ? size.width / 4
                  : size.width / 2,
              dropdownMaxHeight: 150,
              buttonPadding: const EdgeInsets.only(left: 14, right: 14),
              buttonDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                // border: Border.all(
                //   color: Colors.black,
                // ),
                boxShadow:   const [
                   BoxShadow(
                    color: secondary,
                    offset: Offset(2, 2),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                   BoxShadow(
                    color: Colors.white60,
                    offset: Offset(-2, -2),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ],
                color: Colors.white,
              ),
              underline: const SizedBox(),
              itemPadding: const EdgeInsets.only(left: 14, right: 14),
              // dropdownWidth: 300,
              dropdownDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
