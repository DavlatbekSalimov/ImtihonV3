import 'package:flutter/material.dart';
import 'package:vaiant3/Pages/CardOperationPage/MyCardMassage.dart';
import 'package:vaiant3/Pages/CardOperationPage/MyCardOperations.dart';
import 'package:vaiant3/Widgets/MyCard.dart';

class CardOperation extends StatefulWidget {
  const CardOperation({super.key});

  @override
  State<CardOperation> createState() => _CardOperationState();
}

class _CardOperationState extends State<CardOperation> {
  int _currentindex = 0;
  void ontapp(int index) {
    setState(() {
      _currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        centerTitle: true,
        title: const Text(
          'My Card',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            style: IconButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 238, 238, 237),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            iconSize: 25,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz_rounded),
            style: IconButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 238, 238, 237),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            iconSize: 25,
          ),
        ],
      ),
      body: Column(
        children: [
          MyCard(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyCardOperations(
                icon: Icon(
                  Icons.arrow_circle_left_outlined,
                  size: 30,
                  color: Colors.black,
                ),
                text: 'Request',
              ),
              MyCardOperations(
                icon: Icon(
                  Icons.arrow_circle_right_outlined,
                  size: 30,
                  color: Colors.black,
                ),
                text: "Send",
              ),
              MyCardOperations(
                icon: Icon(
                  Icons.more_horiz_rounded,
                  size: 30,
                  color: Colors.black,
                ),
                text: 'More',
              )
            ],
          ),
          Expanded(
            child: SizedBox(
              height: double.infinity,
              child: ListView(
                children: const [
                  MyCardMassage(
                    title: 'Transfer',
                    subtitle: 'Transfer to another card',
                    icon: Icon(Icons.arrow_upward_outlined),
                    iconBackgroundColor: Colors.purple,
                  ),
                  MyCardMassage(
                    icon: Icon(Icons.download_rounded),
                    title: 'My Card top-up',
                    subtitle: 'Transfer to my card',
                    iconBackgroundColor: Colors.amberAccent,
                  ),
                  MyCardMassage(
                    icon: Icon(Icons.download_rounded),
                    title: 'Cashback',
                    subtitle: 'Transfer to my card',
                    iconBackgroundColor: Colors.amberAccent,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            // showUnselectedLabels: true,
            backgroundColor: Colors.black,
            useLegacyColorScheme: true,
            unselectedItemColor: Colors.white,
            showSelectedLabels: true,
            selectedItemColor: Colors.amber,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.incomplete_circle_sharp), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.credit_card_rounded), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
            ],
            onTap: ontapp,
            currentIndex: _currentindex,
          ),
        ),
      ),
    );
  }
}
