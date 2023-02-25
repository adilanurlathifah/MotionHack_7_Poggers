// main.dart
import 'package:flutter/material.dart';  
  
void main() {  
  runApp(const MaterialApp( home: VideoCall(),));  
}  
  
class VideoCall extends StatefulWidget {
  const VideoCall({super.key});
  
  @override  
  // ignore: library_private_types_in_public_api
  _VideoCall createState() => _VideoCall();  
}

class _VideoCall  extends State<VideoCall> {  
  @override  
  Widget build(BuildContext context) {  
    return SafeArea(
      child: Stack(
        children:[
          Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
            image: AssetImage("lib/images/videocall.png"),
            fit: BoxFit.cover,
          )),
        ),
         Padding(
           padding: const EdgeInsets.all(20.0),
           child: Align(
              alignment: Alignment.topCenter,
              child: Container(

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const Icon(Icons.arrow_back_ios,
                   color: Colors.white,
                    size: 25),
                    const SizedBox(
                      width: 80,
                      height: 85,
                    ),
                    Column(
                      children: const[
                         Text('Oura EVOS MLBB',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          decoration: TextDecoration.none
                          ),
                        ),
                         Text('20:57',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          decoration: TextDecoration.none
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
         ),
        ]
      ),
    );  
  }  
}  