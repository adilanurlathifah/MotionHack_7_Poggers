import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack_poggers/shared/theme.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

@override
State<HomePageWidget> createState() => _HomePageWidget();
}

class _HomePageWidget extends State<HomePageWidget> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
  return Scaffold(
        backgroundColor: blueColor,
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.book), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: ''),
            ]),
        body: SafeArea(
          child: Column(
          children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                        Text(
                        'Hi, Adam Melvin',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                        ),
                      ),
                        SizedBox(
                        height: 7,
                      ),
                        Text(
                        "Let's Improve Your Performance",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 30,
                      // backgroundImage: AssetImage('img/profile.jpg')
                  ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
              height: 5,
          ),
          Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(10),
          width: 360,
          child: Row(
            children: const [
              Icon(
              Icons.search,
              color: Colors.black,
              ),
               Text(
                'Search',
                style: TextStyle(
                  color : Colors.black
                ),
               ),
            ],
          ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          const Text(
                          'Games',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w800,
                              color: Colors.black,
                          ),
                        ),
                          const SizedBox(
                          height: 0,
                        ),
                          Text(
                          "See All",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: blueColor,
                          ),
                        ),
                      ]),
                    ),
                  ]),
               ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
              child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    itemCount: 8,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      height: 80,
                      width: 70,
                      margin: const EdgeInsets.all(10),
                      child: Center(
                        child: Image.network('https://www.pubgmobile.com/images/event/common/icon.png')
                      ),
                    ),
                  ),
                ),
              ],
                  ),
                ),
                      ),
            ),
          const SizedBox(
            height: 280,
          )
          ]
    ))
    );
  }
}