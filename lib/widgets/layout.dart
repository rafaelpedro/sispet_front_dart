import 'package:flutter/material.dart';

class DefaultTextForm extends StatelessWidget {
  final String label;
  final bool? obscureText;
  final FormFieldValidator<String>? validator;
  final TextEditingController controller;

  const DefaultTextForm(
      {super.key,
      required this.label,
      this.obscureText,
      this.validator,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextFormField(
        controller: controller,
        validator: validator,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
            label: Text(label),
            border: OutlineInputBorder(),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black))),
      ),
    );
  }
}
