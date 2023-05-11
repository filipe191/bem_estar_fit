import 'package:flutter/material.dart';

class FormTextField extends StatelessWidget {

  final String? labelText;
  final String? hintText;
  final TextEditingController? textController;

  const FormTextField({super.key, this.labelText, this.hintText, this.textController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      child: TextField(
        controller: textController,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
