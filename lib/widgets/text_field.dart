import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String text;
  const TextFieldWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(fontSize: 19, color: Color(0xFF0D1F3C)),
      decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffF2C94C),
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          border: const OutlineInputBorder(),
          labelText: text,
          labelStyle: const TextStyle(color: Color(0xffB4B4B4))),
    );
  }
}
