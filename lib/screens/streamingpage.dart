
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
                height: 10,
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
                          backgroundImage: AssetImage('lib/images/john.jpg'),
                           ),
                          const SizedBox(
                            width: 20,
                          ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                        Text(
                          'John',
                          style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.grey
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                          'Hello Guys!!',
                          style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 16
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                    children: [
                       const CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('lib/images/kelly.jpg'),
                           ),
                          const SizedBox(
                            width: 20,
                          ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                        Text(
                          'Kelly',
                          style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.grey
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                          'What a nice movement',
                          style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 16
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height:10
              ),
              Row(
                    children: [
                       const CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('lib/images/adam_melvin.jpg'),
                           ),
                          const SizedBox(
                            width: 20,
                          ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                        Text(
                          'Adam Melvin',
                          style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.grey
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                          'joined',
                          style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
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
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(  
                children: const <Widget>[  
                  Padding(  
                    padding: EdgeInsets.all(0),  
                    child: TextField(  
                      decoration: InputDecoration(  
                        border: OutlineInputBorder(),   
                        hintText: 'Add Comment',  suffixIcon: Icon(Icons.insert_emoticon)
                      ),  
                      
                    ),  
                  ),  
                ],  
              ),
              )  
          ] ),
    )]),
    );
  }
}