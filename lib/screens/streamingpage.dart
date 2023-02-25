
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StreamingPage extends StatefulWidget {
  final Map? todo;
  const StreamingPage({
    super.key,
    this.todo,
  });

@override
State<StreamingPage> createState() => _StreamingPage();
}

class _StreamingPage extends State<StreamingPage> {
  final String _buttonText = " Register \$5";
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
            'Streaming MLBB',
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
                                child: Image.asset('lib/images/streaming_video.png')
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                              height: 80,
                              width: 80,
                              child: Image.asset('lib/images/RRQ_R7.png')
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                        Text(
                          'RRQ R7',
                          style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                          'Known as a great Offlaner in Mobile\nLegends.Previously he was a Dota 2 pro\nplayer who had played with well-known\nteams such as The Prime and RRQ.',
                          style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                          fontSize: 13
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Live Chat',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 18
                ),),
              ),
          ] ),
        );
  }
}