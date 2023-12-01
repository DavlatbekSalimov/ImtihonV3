import 'package:flutter/material.dart';
import 'package:vaiant3/Pages/HomePsge/homePage.dart';
import 'package:vaiant3/Pages/Page_one/constContainer.dart';

class PageOne extends StatelessWidget {
  PageOne({super.key});
  final Color asosiy = Color.fromARGB(255, 76, 124, 208);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 76, 124, 208),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 8,
            right: 8,
            top: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ' Mange, \n Your \n Financies \n Easily',
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text(
                            ' Here it; small description \n of the app so that user can \n have faith in the app',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 25),
                                  child: ConstContainer(
                                    color: Color.fromARGB(255, 76, 124, 208),
                                  ),
                                ),
                                ConstContainer(),
                                ConstContainer(),
                              ],
                            ),
                            Column(
                              children: [
                                ConstContainer(
                                  color: Colors.yellow,
                                ),
                                ConstContainer(
                                  color: Colors.yellow,
                                ),
                                ConstContainer(
                                  color: Colors.red,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                ConstContainer(
                                  color: Colors.red,
                                ),
                                ConstContainer(
                                  color: Colors.red,
                                ),
                                ConstContainer(
                                  color: Colors.red,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                ConstContainer(
                                  color: Color.fromARGB(255, 76, 124, 208),
                                ),
                                ConstContainer(
                                  color: Color.fromARGB(255, 76, 124, 208),
                                ),
                                ConstContainer(),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ConstContainer(),
                        ConstContainer(
                            color: Color.fromARGB(255, 76, 124, 208)),
                        ConstContainer(),
                        ConstContainer(),
                        ConstContainer(),
                        ConstContainer(),
                        ConstContainer(),
                        ConstContainer(),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 20, left: 14, right: 14),
                child: SizedBox(
                  height: 70,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (contex) => HomePage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
