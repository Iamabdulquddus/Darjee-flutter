import 'package:flutter/material.dart';

import '../../../admin/sidebar/sidebar_widget.dart';
import '../../content.dart';
import 'components/add_fabric_item.dart';
import 'components/fabric_item_list.dart';

class FabricItem extends StatelessWidget {
  const FabricItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WidgetWithSidebar(
        context,
        cardOfUserTable(
          context,
          Column(
            children: [
              AddFabricItem(),
              SizedBox(height: 20,),
              FabricItemList(),
            ],
          ),
        ),
      ),
    );
  }
}
