import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Function(String?) onSaved;
  final String hintText;
  const CustomTextField({
    super.key,
    required this.onSaved,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        onSaved: onSaved,
        decoration: InputDecoration(hintText: hintText),
      ),
    );
  }
}
