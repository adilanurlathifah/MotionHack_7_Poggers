import 'package:flutter/material.dart';

class PlayerAvatar extends StatelessWidget {
  const PlayerAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.0,
      height: 70.0,
      padding: const EdgeInsets.all(2),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Wrap(
              children: const <Widget>[
                ListTile(
                  leading: Image(image: 
                  AssetImage(
                    'lib/images/valorant_turnament.png',
                    )),
                  title: Text(
                    'Oura',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black
                    )  
                  ),  
                subtitle: Text(  
                  'MLBB',  
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey
                  )  
                ),  
              ),  
          ]),
          ],
        ),
      )
    );
  }
}