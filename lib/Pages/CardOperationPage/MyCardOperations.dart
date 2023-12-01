

import 'package:flutter/material.dart';

class MyCardOperations extends StatelessWidget {
  final Icon icon;
  final String text;
  const MyCardOperations({
    required this.icon,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: SizedBox(
        width: 120,
        child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
              maximumSize: Size(100, 100),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25))),
          child: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Column(
              children: [
                icon,
                Text(
                  text,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
