import 'package:darjee_flutter/constants/style.dart';
import 'package:flutter/material.dart';
import 'dropdown.dart';

class PopupDialogBox extends StatefulWidget {
  final String title, dropDownTitle ,chargedPrice;
  final List<String> options;
  final Function(String) onOptionSelected;

  const PopupDialogBox({
    required this.title,
    required this.options,
    required this.onOptionSelected,
    required this.dropDownTitle,
    required this.chargedPrice,
  });

  @override
  State<PopupDialogBox> createState() => _PopupDialogBoxState();
}

class _PopupDialogBoxState extends State<PopupDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: AlertDialog(
        title: Text(widget.title),
        content: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 100,
                child: CustomDropdown(
                  dropDownTitle: widget.dropDownTitle,
                  dropDownItemList: widget.options,
                  title: '',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Charged Price', style: MyTextStyles.headingxSmallBoldPrimary,),
                    Text("Rs ${widget.chargedPrice} /-", style: MyTextStyles.regularPrimary,),
                  ],
                ),
              ),


            ],
          ),
        ),
        actions: [
          Row(
            children: [
              Expanded(
                child: ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text('Save Selection')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
