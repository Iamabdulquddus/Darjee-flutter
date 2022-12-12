import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../constants/style.dart';
import '../../../model/order_item.dart';
import '../../../responsive.dart';
import 'select_item_card.dart';
import 'package:get/get.dart';

class SelectItemGrid extends StatelessWidget {
  const SelectItemGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 350,
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
                  Icons.menu_rounded,
                  color: primary,
                ),
                Text(
                  '  Select Item',
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
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: wDefaultPadding, vertical: wDefaultPadding),
                child: ListView(
                  shrinkWrap: true,
                 scrollDirection: Axis.horizontal,
                  children: List.generate(
                    orderItemList.length,
                    (index) => SelectItemCard(
                      selectItemCard: orderItemList[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
