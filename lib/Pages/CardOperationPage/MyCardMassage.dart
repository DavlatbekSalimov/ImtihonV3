

import 'package:flutter/material.dart';

class MyCardMassage extends StatelessWidget {
  final String title;
  final String subtitle;
  final Icon icon;
  final Color iconBackgroundColor;
  const MyCardMassage({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.iconBackgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color.fromARGB(255, 229, 229, 229),
        ),
        child: ListTile(
          leading: SizedBox(
            height: 60,
            child: ElevatedButton(
              onPressed: () {},
              child: icon,
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14))),
            ),
          ),
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            subtitle,
            style:
                TextStyle(fontWeight: FontWeight.w500, color: Colors.black54),
          ),
        ),
      ),
    );
  }
}
