import 'package:flutter/material.dart';

import '../../constants.dart';

class ReusableCard extends StatelessWidget {
  final Widget? child;
  final bool selected;
  final Function()? onTab;

  ReusableCard({this.child, this.selected = false, this.onTab});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        child: child,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: selected == true ? KActiveCardColor : KInactiveCardColor,
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
