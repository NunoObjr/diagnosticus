import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {Key? key,
      required this.label,
      required this.isLoading,
      required this.onPressed})
      : super(key: key);

  final String label;
  final bool isLoading;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0))),
          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF0B10DB)),
        ),
        child: isLoading
            ? Padding(
                padding: const EdgeInsets.only(top: 4.0, bottom: 4),
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              )
            : Text(
                label,
                style: TextStyle(color: Colors.white),
              ),
      ),
    );
  }
}
