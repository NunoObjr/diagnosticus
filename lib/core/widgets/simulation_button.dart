import 'package:flutter/material.dart';

class SimulationButtonWidget extends StatelessWidget {
  const SimulationButtonWidget(
      {Key? key,
      required this.index,
      required this.selected,
      required this.image,
      required this.onPressed})
      : super(key: key);

  final int index;
  final bool selected;
  final String image;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          border: Border.all(
            color: selected ? Colors.purple : Colors.white,
            width: selected ? 3 : 0,
          ),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Image.asset(image),
        ),
      ),
    );
  }
}
