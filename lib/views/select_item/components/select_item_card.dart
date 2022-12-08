import 'dart:ui';
import 'package:darjee_flutter/constants/style.dart';
import 'package:flutter/material.dart';
import '../../../model/order_item.dart';

class SelectItemCard extends StatefulWidget {
  const SelectItemCard({Key? key, required this.selectItemCard})
      : super(key: key);
  final OrderItem selectItemCard;

  @override
  State<SelectItemCard> createState() => _SelectItemCardState();
}

class _SelectItemCardState extends State<SelectItemCard> {
  final elevation = 10.0;
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        border: Border.all(color: primary, width: 1)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            widget.selectItemCard.image,
            fit: BoxFit.cover,
          ),

          Text(
            widget.selectItemCard.title,
            style: MyTextStyles.headingxSmallBoldPrimary,
          ),
          Checkbox(
            value: check,
            onChanged: (bool? value) {
              setState(() {
                check = value!;
              });
            },
          ),

        ],
      ),
    );
  }
}
