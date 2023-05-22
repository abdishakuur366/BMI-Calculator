import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomButton extends StatelessWidget {
  final Function() onPressed;
  final String? title;

  const CustomButton({Key? key, required this.onPressed, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => onPressed(),
      child: Text(
        title ?? 'CALCULATE',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      fillColor: KBottomContainerColour,
      constraints: BoxConstraints.tightFor(
        width: double.infinity,
        height: 56,
      ),
    );
  }
}
