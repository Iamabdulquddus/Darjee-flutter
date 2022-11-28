import 'dart:math';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../constants/style.dart';


final List<Map<String, dynamic>> _data = List.generate(100, (index) => {
  "id" :index,
  "order_id": Random().nextInt(1000),
  "title" : "Customer $index",
  "order_type" : "Stitching",
  "Bill" : Random().nextInt(5000),
  "delivery_date" : TimeOfDay,
  "action" : 'different actions',

});
var map = [
  {
    'value1':"value data1",
    'value2':"value data",
    'value3':"value data",
    'value4':"value data",
    'value5':"value data",
    'value6':"value data",

  },
  {
    'value1':"value data2",
    'value2':"value data",
    'value3':"value data",
    'value4':"value data",
    'value5':"value data",
    'value6':"value data",
  },
  {
    'value1':"value data3",
    'value2':"value data",
    'value3':"value data",
    'value4':"value data",
    'value5':"value data",
    'value6':"value data",

  },
  {
    'value1':"value data4",
    'value2':"value data",
    'value3':"value data",
    'value4':"value data",
    'value5':"value data",
    'value6':"value data",

  },
  {
    'value1':"value data5",
    'value2':"value data",
    'value3':"value data",
    'value4':"value data",
    'value5':"value data",
    'value6':"value data",

  },
  {
    'value1':"value data6",
    'value2':"value data",
    'value3':"value data",
    'value4':"value data",
    'value5':"value data",
    'value6':"value data",

  },
];

class AddCustomerList extends StatelessWidget {
  const AddCustomerList({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        decoration: BoxDecoration(
        border: Border.all(width: 1, color: secondary),
    borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10 ,vertical: 10),
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
                Icons.menu,
                color: Colors.black,
              ),
              Text(
                '  Customer List',
                style: MyTextStyles.headingxSmallBoldBlack,
              ),
            ],
          ),
        ),

        SizedBox(
          height: 400,
          child: DataTable2(
            columnSpacing: 20,
            horizontalMargin: 12,
            minWidth: 500 ,
            columns: [
              DataColumn2(
                  size: ColumnSize.S,
                  label: Text(
                    'S.NO',
                    overflow: TextOverflow.visible,
                  )),
              DataColumn2(
                  size: ColumnSize.M,
                  label: Text(
                    'Customer Name',
                    overflow: TextOverflow.visible,
                  )),
              DataColumn2(
                  size: ColumnSize.S,
                  label: Text(
                    'Reg. Date',
                    overflow: TextOverflow.visible,
                  )),
              DataColumn2(
                  size: ColumnSize.S,
                  label: Text(
                    'Mobile',
                    overflow: TextOverflow.visible,
                  )),
              DataColumn2(
                  size: ColumnSize.S,
                  label: Text(
                    'Details',
                    overflow: TextOverflow.visible,
                  ),
              ),
              DataColumn2(
                  size: ColumnSize.S,
                  label: Text(
                    'Actions',
                    overflow: TextOverflow.visible,
                  ),
              ),
            ],
            rows: List<DataRow>.generate(
              map.length,
                  (index) => DataRow(
                cells: [
                  DataCell(Text("${map[index]['value1'] }")),
                  DataCell(Text("${map[index]['value2'] }")),
                  DataCell(Text("${map[index]['value3'] }")),
                  DataCell(Text("${map[index]['value4'] }")),
                  DataCell(Text("${map[index]['value4'] }")),
                  DataCell(Text("${map[index]['value6'] }"))
                ],
              ),
            ),
          ),
        ),
      ],
    ),);
  }
}
