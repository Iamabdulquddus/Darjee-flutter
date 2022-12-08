import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../constants/style.dart';
import '../../admin/sidebar/sidebar_widget.dart';
import '../../model/order_item.dart';
import '../../responsive.dart';
import '../../routes/routes.dart';
import '../content.dart';
import 'components/select_item_card.dart';
import 'package:get/get.dart';

class SelectItem extends StatefulWidget {
  const SelectItem({Key? key}) : super(key: key);

  @override
  State<SelectItem> createState() => _SelectItemState();
}

class _SelectItemState extends State<SelectItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WidgetWithSidebar(
          context, cardOfUserTable(context, const SelectItemGrid())),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.toNamed(MyRoutes.getOrderDetails());
      },child: Icon(Icons.arrow_forward, size: 20,), ),
    );
  }
}

class SelectItemGrid extends StatelessWidget {
  const SelectItemGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 600,
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
              child: ListView(

                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: wDefaultPadding,
                        vertical: wDefaultPadding),
                    child: GridView.count(
                        shrinkWrap: true,
                        mainAxisSpacing: wDefaultPadding * 2,
                        crossAxisSpacing: wDefaultPadding * 2,
                        crossAxisCount: Responsive.isDesktop(context)?3:1,
                        children:  List.generate(
                          orderItemList.length,
                              (index) => SelectItemCard(
                                selectItemCard: orderItemList[index],
                              ),
                        ),),
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
