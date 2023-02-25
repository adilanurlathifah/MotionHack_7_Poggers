
import 'package:flutter/material.dart';
import 'package:motionhack_poggers/screens/home_page.dart';
import 'package:motionhack_poggers/screens/tournament_desc.dart';
import 'package:motionhack_poggers/screens/tournamentpayment.dart';

void main(){
  runApp(const MyApp());
  }

  class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TournamentPayment(),
    );
  }
}