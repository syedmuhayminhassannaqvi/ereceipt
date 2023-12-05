import 'package:erexeipt/splashscreen/welcomeScreenThird.dart';
import 'package:flutter/material.dart';

class WelcomeScreenSecond extends StatefulWidget {
  const WelcomeScreenSecond({Key? key}) : super(key: key);

  @override
  State<WelcomeScreenSecond> createState() => _WelcomeScreenSecondState();
}

class _WelcomeScreenSecondState extends State<WelcomeScreenSecond> {
  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Color(0xff55B76B),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.18,),
          SizedBox(
              height: MediaQuery.of(context).size.height*0.28,
              width: MediaQuery.of(context).size.width*0.9,
              child: Image.asset('assets/splashIcons/Chart.png')),
          SizedBox(height: MediaQuery.of(context).size.height*0.05,),
          Text('  Monitor your \n daily spending',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),
          SizedBox(height: MediaQuery.of(context).size.height*0.15,),
          Container(
            width: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: MediaQuery.of(context).size.height*0.007,
                  backgroundColor: Colors.white.withOpacity(0.5),
                ),
                CircleAvatar(
                  radius: MediaQuery.of(context).size.height*0.007,
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  radius: MediaQuery.of(context).size.height*0.007,
                  backgroundColor: Colors.white.withOpacity(0.5),
                ),
              ],),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.02,),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WelcomeScreenThird()),
              );

            },
            child: Container(
              width: MediaQuery.of(context).size.width*0.85,
              height: MediaQuery.of(context).size.height*0.07,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))

              ),
              child: Center(
                child: Text('Next',
                  style: TextStyle(
                      color: Color(0xff55B76B)
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.02,),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WelcomeScreenThird()),
              );
            },
            child: Text('SKIP',style: TextStyle(
              fontSize: MediaQuery.of(context).size.height*0.017,
            ),),
          )


        ],
      ),
    );
  }
}
