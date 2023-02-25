import 'package:flutter/material.dart';
import 'package:motionhack_poggers/shared/theme.dart';

class TournamentDesc extends StatefulWidget {
  final Map? tournament;
  const TournamentDesc({
    super.key,
    this.tournament,
  });

@override
State<TournamentDesc> createState() => _TournamentDesc();
}

class _TournamentDesc extends State<TournamentDesc> {
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
            'Tournament MLBB',
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
                                child: Image.asset('lib/images/turnamen_ml.png')
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                      'PARTI 2023',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff31578E)
                    ),
                  ),
                const SizedBox(
                  height: 20,
                ),
               const Text(
                    'Turnamen Mobile Legends - By HIMATIF',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                      ),
                  ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                    'PARTI 2022, organized by Himpunan Mahasiswa Informatika UMS.',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey
                      ),
                  ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                    'Terms and Condition',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                      ),
                  ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                    ' - Match Day : 22 - 23 October 2022\n - Registration closes : October 19, 2022 \n - Technical Meeting :  October 21, 2022 \n - Venues : Online \n - Open 64 Slots \n - Free Skins \n - All Tiers/Ranks \n - Custom Draft Pick Mode \n - Single Elimination BO1 | Bronze Match BO3 | \n   BO5 Grandfinals',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                    'Prize',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                      ),
                  ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                    'Prize Pool Rp. 4,000,000 + Medal + E-Certificate + Team Profile on the Tourney Info Website Prizes may change according to the number of  participants',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey
                      ),
                  ),
                const SizedBox(
                  height: 20,
                ),
              GestureDetector(
                onTap: () {
                },
                child: Container(
                 height: 60,
                 width: 50,
                 padding: const EdgeInsets.all(10),
                 decoration: BoxDecoration(
                   color: blueColor,
                  borderRadius: BorderRadius.circular(10)
                 ),
                 child:
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('\$10',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.lineThrough
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Register \$5',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                  ))
                 ],)
                ),
              ),
            ],
          ),
        );
  }
}