import 'package:flutter/material.dart';
import 'package:motionhack_poggers/shared/theme.dart';

class CoursePage extends StatefulWidget {
  final Map? course;
  const CoursePage({
    super.key,
    this.course,
  });

@override
State<CoursePage> createState() => _CoursePage();
}
class _CoursePage extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back_ios,
            size: 17,
            color: Colors.white
            ),
          title: const Text(
            'Laning Phase : Oura',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18
            ),
          ),
          centerTitle: true,
            flexibleSpace: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('lib/images/mlbg.png'),
                  fit: BoxFit.cover
              ),
            ),
          ),
        ),
        body: ListView(
            padding: const EdgeInsets.all(20.0),
              children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                            color: Colors.white,
                            height: 215,
                            child: Center(
                              child: 
                              SizedBox(
                                height: 210,
                                width: 340,
                                child: Image.asset('lib/images/course_video.png')
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                Row(
                    children: [
                       const CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('lib/images/play.png'),
                          backgroundColor: Colors.white,
                           ),
                          const SizedBox(
                            width: 20,
                          ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                        Text(
                          'Introduction Learning',
                          style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                          '30 Min 10 Sec',
                          style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                          fontSize: 16
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                    children: [
                       const CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('lib/images/stop.png'),
                          backgroundColor: Colors.white,
                           ),
                          const SizedBox(
                            width: 20,
                          ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                        Text(
                          'Introduction Hero',
                          style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.black
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                          '10 Min 20 Sec',
                          style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                          fontSize: 16
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height:15
              ),
              Row(
                    children: [
                       const CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('lib/images/stop.png'),
                          backgroundColor: Colors.white,
                           ),
                          const SizedBox(
                            width: 20,
                          ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                        Text(
                          "Increase Hero's Skills",
                          style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.black
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                          '15 Min 14 Sec',
                          style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                          fontSize: 16
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                        height: 15,
              ),
              Row(
                    children: [
                       const CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('lib/images/stop.png'),
                          backgroundColor: Colors.white,
                           ),
                          const SizedBox(
                            width: 20,
                          ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                        Text(
                          "Time Management",
                          style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.black
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                          '40 Min 32 Sec',
                          style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                          fontSize: 16
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                },
                child: Container(
                 height: 50,
                 width: 400,
                 padding: const EdgeInsets.all(10),
                 decoration: BoxDecoration(
                   color: blueColor,
                  borderRadius: BorderRadius.circular(10)
                 ),
                 child:
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Watch Free',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  ]),
                ),
              ),
          ] ),
    )]),
    );
  }
}