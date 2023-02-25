
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motionhack_poggers/screens/tournament_desc.dart';
import 'package:motionhack_poggers/shared/theme.dart';

class TournamentPayment extends StatefulWidget {
  final Map? todo;
  const TournamentPayment({
    super.key,
    this.todo,
  });

@override
State<TournamentPayment> createState() => _TournamentPayment();
}

class _TournamentPayment extends State<TournamentPayment> {
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
                onTap:() => showModalBottomSheet(

                context: context, 
                builder: (context) => buildSheet(context)),
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
                      decoration: TextDecoration.lineThrough),
                 )],
                 ),
                ),
              ),
          ],
        ),
      );
  }
  
  Widget buildSheet(BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Row(
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('lib/images/turnamen_ml.png'),
                ),
                SizedBox(width: 20),
                Text(
                  'Tournament Mobile Legend',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                      'Description',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: blueColor
                        ),
                   ),
                   const SizedBox(
                    height: 10,
                   ),
                   const Text(
                      'PARTI 2022, organized by Himpunan Mahasiswa\nInformatika UMS.',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey
                      ),
                    ),
                  const SizedBox(
                      height: 15,
                    ),
                  Row(
                    children: [
                      Icon(
                          Icons.calendar_today,
                          color: blueColor,
                          size: 18,
                        ),
                      const SizedBox(
                          width: 10,
                        ),
                        const Text(
                      'October 2023',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey
                       ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Image(
                        image: AssetImage('lib/images/clock.png'),
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(
                          width: 8,
                        ),
                      Text(
                      'According to conditions',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey
                       ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                          Text(
                      'Subtotal',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: blueColor
                        ),
                      ),
                      const SizedBox(
                        width: 245,
                      ),
                      const Text(
                      '\$5.00',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey
                            ),
                          ),
                        ],
                      ),
                    const SizedBox(
                      height: 7,
                    ),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                          Text(
                      'Admin Fee',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: blueColor
                        ),
                      ),
                      const SizedBox(
                        width: 223,
                      ),
                      const Text(
                      '\$0.50',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                          Text(
                      'Other',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: blueColor
                        ),
                      ),
                      const SizedBox(
                        width: 263,
                      ),
                      const Text(
                      '\$0.25',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey
                            ),
                          ),
                        ],
                      ),
                    const SizedBox(
                      height: 11,
                    ),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                          Text(
                      'Total',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: blueColor
                        ),
                      ),
                      const SizedBox(
                        width: 265,
                      ),
                     Text(
                      '\$5.75',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: blueColor
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)
                          ),
                          width: 150,
                          child: OutlinedButton(
                            onPressed: navigateToTournamentPage,
                            child: Text('Cancel',
                           style: TextStyle(
                            color: blueColor
                          )),
                          ),
                        ),
                      const SizedBox(
                        width: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)
                          ),
                        width: 150,
                        child: TextButton(
                          style: TextButton.styleFrom(
                          backgroundColor: blueColor),
                          onPressed: navigateToSuccessPayPage,
                          child: const Text(
                           "Pay",
                           style: TextStyle(
                            color: Colors.white
                          ),
                          ),
                        ),
                      ),
                    ]),
                    ],
                  ),
                ],
            ),
          ],
        ),
      );
  }

  void navigateToTournamentPage()  {
      final route = MaterialPageRoute(
        builder: (context) => const TournamentDesc(),
        );
         Navigator.push(context, route);
  }
  void navigateToSuccessPayPage() {
    AlertDialog alert = AlertDialog(
      title: Column(
        children: [
          Column(
            children: [
              const Image(image: AssetImage('lib/images/success.png'), width: 40, height: 40),
              const SizedBox(
                height: 20,
              ),
              Text('Payment Success!',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: blueColor,
                fontSize: 20
              ),),
              const SizedBox(
                height: 20,
              ),
              const Text('Thank you for buying this product,\ncheck the orde section in the profile',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black,
                fontSize: 16
              ),),
            ],
          ),
        ],
      ),
      actions: [
        TextButton(
          child:  Text('Ok',
          style: TextStyle(
            color: blueColor
          ),),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ],
    );

    showDialog(context: context, builder: (context) => alert);
    return;
  }
}