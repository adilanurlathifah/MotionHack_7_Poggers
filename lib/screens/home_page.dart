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
        appBar: AppBar(
        backgroundColor: blueColor,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
           Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                     const Text(
                      'Hi, Adam Melvin',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      "Let's Improve Your Performance",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.withOpacity(0.9),
                      ),
                    ),
                  ],
                ),
                const CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 25,
                    backgroundImage: AssetImage('img/profile.jpg')
                ),
            ],
          ),
        ],
      ),
    );
  }
}
