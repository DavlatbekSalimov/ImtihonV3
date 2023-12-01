import 'package:flutter/material.dart';
import 'package:vaiant3/Pages/CardOperationPage/CardOperation.dart';

class Cardd extends StatelessWidget {
  final Color? color;
  const Cardd({
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const CardOperation(),
          )),
      child: Container(
        margin: EdgeInsets.all(8),
        height: 250,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: color,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    'SD BANK',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const Spacer(),
                  Image.asset(
                    'assets/images/m.png',
                    height: 50,
                  )
                ],
              ),
              const Center(
                child: Text('....6455\n Johen Michel',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
              ),
              const Text(
                '\$5,590',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
