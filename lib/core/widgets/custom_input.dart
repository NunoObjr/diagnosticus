import 'package:flutter/material.dart';

class CustomInputWidget extends StatelessWidget {
  const CustomInputWidget(
      {Key? key, required this.label, this.controller, this.isPassword = false})
      : super(key: key);
  final String label;
  final bool isPassword;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextFormField(
        autofocus: false,
        obscureText: isPassword,
        controller: controller,
        decoration: InputDecoration(
          hintText: label,
          labelStyle: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
