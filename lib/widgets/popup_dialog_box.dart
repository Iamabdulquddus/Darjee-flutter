import 'package:darjee_flutter/constants/style.dart';
import 'package:flutter/material.dart';
import 'dropdown.dart';

class PopupDialogBox extends StatefulWidget {
  final String cutterStitcherTitle,
      dropDownTitle,
      chargedPrice,
      extraDropDownTitle,
      totalPrice,
      extraItemPrice;
  final List<String> options, extraOptions;
  // final Function(String) onOptionSelected;

  const PopupDialogBox({
    required this.cutterStitcherTitle,
    required this.extraDropDownTitle,
    required this.options,
    // required this.onOptionSelected,
    required this.dropDownTitle,
    required this.chargedPrice,
    required this.extraOptions,
    required this.totalPrice,
    required this.extraItemPrice,
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
        title: const Text('Assign Order'),
        content: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
                child: CustomDropdown(
                  dropDownTitle: widget.dropDownTitle,
                  dropDownItemList: widget.options,
                  title: widget.cutterStitcherTitle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Charged Price',
                      style: MyTextStyles.subHeadingBoldPrimary,
                    ),
                    Text(
                      "Rs ${widget.chargedPrice} /-",
                      style: MyTextStyles.regularPrimary,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 80,
                child: Center(
                  child: CustomDropdown(
                    dropDownTitle: widget.extraDropDownTitle,
                    dropDownItemList: widget.extraOptions,
                    title: 'Extra Desigin',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Charged Price',
                      style: MyTextStyles.subHeadingBoldPrimary,
                    ),
                    Text(
                      "Rs ${widget.extraItemPrice} /-",
                      style: MyTextStyles.regularPrimary,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: lightColor,
                ),
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Price',
                      style: MyTextStyles.headingxSmallBoldPrimary,
                    ),
                    Text(
                      "Rs ${widget.totalPrice} /-",
                      style: MyTextStyles.regularPrimary,
                    ),
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
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Save Selection')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
