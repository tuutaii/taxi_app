import 'package:flutter/material.dart';

class PasswordFieldWidget extends StatefulWidget {
  final String text;
  const PasswordFieldWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<PasswordFieldWidget> createState() => _PasswordFieldWidgetState();
}

class _PasswordFieldWidgetState extends State<PasswordFieldWidget> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: _isObscure,
        style: const TextStyle(fontSize: 19, color: Colors.black),
        decoration: InputDecoration(
          labelText: widget.text,
          labelStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFFB4B4B4)),
          errorText: 'Min 6 character',
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
          suffixIcon: IconButton(
            icon: Icon(
              _isObscure == false ? Icons.visibility_off : Icons.visibility,
              color: const Color(0xff130F26),
            ),
            onPressed: () {
              setState(() {
                _isObscure = !_isObscure;
              });
            },
          ),
        ));
  }
}
