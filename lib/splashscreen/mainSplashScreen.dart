import 'package:erexeipt/splashscreen/welcomeScreenOne.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainSplashScreen extends StatefulWidget {
  const MainSplashScreen({Key? key}) : super(key: key);

  @override
  State<MainSplashScreen> createState() => _MainSplashScreenState();
}

class _MainSplashScreenState extends State<MainSplashScreen> {

  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreenOne()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Color(0xff55B76B),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: MediaQuery.of(context).size.height*0.25,
              width: MediaQuery.of(context).size.width*0.4,
              child: Image.asset('assets/splashIcons/Group.png')),
          SizedBox(height: 40,),
          Text('No more paper receipts and \n cutting of trees Go Green!',
              style: GoogleFonts.montserrat(
                fontSize: 20,
                color: Colors.white,
              )),
          SizedBox(height: 40,),
          Text('Loading...',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,

              )),
        ],
      ),
    );
  }
}
