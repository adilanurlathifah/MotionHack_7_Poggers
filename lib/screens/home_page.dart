import 'package:flutter/material.dart';
import 'package:motionhack_poggers/screens/gamesavatar.dart';
import 'package:motionhack_poggers/screens/playeravatar.dart';
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
        resizeToAvoidBottomInset: false,
        backgroundColor: blueColor,
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.book), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: ''),
            ]),
        body: SafeArea(
              child: ListView(
              children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SingleChildScrollView(
                        child: Column(
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
              child: Row(
                children:  [
                  const Icon(
                  Icons.search,
                  color: Colors.black,
                  ),
                   Text(
                    '\t\tSearch',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color : Colors.black.withOpacity(0.6)
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
                   decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                    ),
                         color: Colors.white,
                  ),
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
                                  fontWeight: FontWeight.w700,
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
                    color: Colors.white
                    ),
                  height: 115.0,
                  child: ListView.separated(
                  itemCount: 8,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                  width: 10,
                );
              },
                  itemBuilder: (_, i) => const GamesAvatar(),
                  scrollDirection: Axis.horizontal,
              ),
                    ),
              Container(
                color: Colors.white,
                height: 215,
                child: Center(
                  child: 
                  SizedBox(
                    height: 210,
                    width: 350,
                    child: Image.asset('lib/images/valorant_turnament.png'))
                 ),
              ),
              Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  const [
                              Text(
                              'Professional Player',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                          ]
                      ),
                   ),
                ]),
              ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white
                    ),
                  height: 140.0,
                  child: ListView.separated(
                  itemCount: 6,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                  width: 10,
                );
              },
                  itemBuilder: (_, i) => const PlayerAvatar(),
                  scrollDirection: Axis.horizontal,
              ),
            ),
            Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  const[
                              Text(
                              'Live Stream',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                          ],
                      ),
                   ),
                ]),
              ),
            Container(
                 decoration: const BoxDecoration(
                  color: Colors.white,
                  ),
                  height: 260,
                  child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder:(context, index) {
                  return _liveCard();
                  },
                ),
              ),
            ],
          ),
        ),
      );
    }
  Widget _liveCard() {
    return Card(
      child: Container(
        color: Colors.white,
        width: 260,

        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Image.network("https://www.konyoha.com/wp-content/uploads/2018/12/cara-live-streaming-pubg-facebook-youtube-android.jpg", fit:BoxFit.cover),
            ),
            const Card(
              child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80')
              ),
              title: Text('Push Rank [PUBG]'),
              subtitle: Text('Shroud'),
              ),
          )],
        ),
      ),
    );
  }
}