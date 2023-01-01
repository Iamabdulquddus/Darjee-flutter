import 'package:darjee_flutter/constants/style.dart';
import 'package:flutter/material.dart';

class OtherMeasurementRadioButton extends StatefulWidget {
   OtherMeasurementRadioButton({Key? key, required this.otherMeasurementText, required this.check}) : super(key: key);
 final String otherMeasurementText;
 late  bool check;
  @override
  State<OtherMeasurementRadioButton> createState() => _OtherMeasurementRadioButtonState();
}

class _OtherMeasurementRadioButtonState extends State<OtherMeasurementRadioButton> {
  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          value: widget.check,
          onChanged: (bool? value) {
            setState(() {
              widget.check = value!;
            });
          },
        ),
        Text(widget.otherMeasurementText,)
      ],
    );
  }
}
