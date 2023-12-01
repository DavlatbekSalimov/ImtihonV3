import 'package:flutter/material.dart';

class ConstContainer extends StatelessWidget {
  final Color? color;
  const ConstContainer({
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color ?? Colors.white),
    );
  }
}
