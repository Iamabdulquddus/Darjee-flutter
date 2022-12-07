import 'package:flutter/material.dart';


class CustomTextFormField extends StatefulWidget {
  final String? errorText;
  final String? labelText;
  final TextEditingController? controller;
  final bool? editable;
  final int? maxLines;
  final int? maxLenght;
  final void Function(String)? onChange;
  final Icon? icon;
  final TextInputType? keyboardType;

  const CustomTextFormField({
    Key? key,
    required this.maxLines,
    this.maxLenght,
    this.errorText,
    this.labelText,
    this.controller,
    this.editable,
    this.onChange,
    this.icon,
    this.keyboardType,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  Expanded(
      child: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(vertical: 5, ),
        child: TextFormField(
          maxLength: widget.maxLenght,
          maxLines: widget.maxLines,
          enabled: widget.editable,
          keyboardType: widget.keyboardType,
          decoration: InputDecoration(

            labelText: widget.labelText,
            prefixIcon: widget.icon,
            counterStyle: const TextStyle(
              height: double.minPositive,
            ),
            counterText: "",
            fillColor: Colors.white,
            filled: true,
            errorText: widget.errorText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                5.0,
              ),
            ),
          ),
          controller: widget.controller,
          onChanged: widget.onChange,
        ),
      ),
    );
  }
}
