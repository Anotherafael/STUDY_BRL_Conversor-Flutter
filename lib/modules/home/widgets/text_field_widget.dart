import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final Function(String)? onChanged;
  final String? prefixText;
  final String? hintText;

  const TextFieldWidget({
    Key? key,
    required this.controller,
    required this.labelText,
    required this.onChanged,
    this.prefixText,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          gapPadding: 12,
        ),
        hintText: hintText,
        prefixText: prefixText,
      ),
      style: const TextStyle(
        fontSize: 25.0,
      ),
      onChanged: onChanged,
      keyboardType: TextInputType.number,
    );
  }
}
