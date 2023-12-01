import 'package:flutter/material.dart';
import 'package:vaiant3/Widgets/Cardd.dart';
import 'package:vaiant3/Widgets/History.dart';
import 'package:vaiant3/Widgets/PessonSend.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Padding(
          padding: EdgeInsets.only(left: 5),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ68xCJyjzwUC0J89fXPOkmIvW09vTZjHRkVg&usqp=CAU'),
          ),
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good morning',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Jeny',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_alert_sharp),
            style: IconButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 230, 220, 190),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            iconSize: 25,
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Cardd(
                    color: Color.fromARGB(255, 55, 118, 195),
                  ),
                  Cardd(
                    color: Color.fromARGB(255, 212, 146, 168),
                  ),
                  Cardd(
                    color: Colors.amberAccent,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Quisk send',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Row(
                    children: [
                      PersonSend(
                        name: 'Add',
                        child: Icon(
                          Icons.add,
                          size: 36,
                        ),
                      ),
                      PersonSend(
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSFP9_BnsT0Gxm_GwZaqkykKBTWuKekjVqNsgRMqT2qvqzPP0QHRxym2MIT9FSUhK2l-I&usqp=CAU'),
                        name: 'Emma',
                      ),
                      PersonSend(
                        name: 'Michaell',
                        backgroundImage: NetworkImage(
                            'https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg'),
                      ),
                      PersonSend(
                        name: 'Amilie',
                        backgroundImage: NetworkImage(
                            'https://www.verywellmind.com/thmb/Eww5tSxM2eYCfxikvK2THFxRSA0=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-1411373323-6988f2ee3a17422084a3c7bbff5b4d4a.jpg'),
                      ),
                      PersonSend(
                        name: 'John',
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFZmyFeCEBumft7np4kdvmSBkib8aqCTovg_q8b7jxODJ8ttLNHYPd62oucZg1kBPxo8w&usqp=CAU'),
                      ),
                      PersonSend(
                        name: 'Karl',
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQA7OSXFwUKkHGKQBGDmEZ49zZUOi42wRnWkzQSmq-YhDXYZmexBxuKjwOHWo59YAS1a0o&usqp=CAU'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(40),
                        ),
                        color: Colors.black),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 150, top: 5),
                      child: Text(
                        'Operations',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Align(
                      child: Container(
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(40)),
                            color: Colors.white),
                        child: const Column(
                          children: [
                            Text(
                              'History',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 10, top: 10, right: 10),
                              child: Divider(
                                color: Colors.black,
                              ),
                            ),
                            History(),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
