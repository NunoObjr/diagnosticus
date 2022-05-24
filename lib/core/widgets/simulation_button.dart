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
  final int selected;
  final String image;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(
          color: index == selected ? Colors.purple : Colors.white,
          width: index == selected ? 3 : 0,
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Image.asset(image),
      ),
    );
  }
}
