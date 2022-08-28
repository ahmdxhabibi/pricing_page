import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pricing_page/subscribe_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: const DecorationImage(
                image:AssetImage('assets/background.png'), 
                fit: BoxFit.fill)
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(28, 80, 28, 50),
            child: Column(
              children: [
                Center(
                  child: 
                    Column(
                      children: [
                        Container(
                        height: 164,
                        width: 164,
                        child: Image.asset('assets/logo.png')
                        ),
                        SizedBox(height: 24,),
                        Text('Pro Features',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600
                          )),
                        SizedBox(height: 10,),
                        Text('Unlock the winner modules\nand get more insights',
                          style: GoogleFonts.poppins(
                            color: Color(0xff7F7FAD),
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,),
                        SizedBox(height: 45,),
                        Row(
                          children: [
                            Icon(Icons.check_circle_rounded,
                              color: Color(0xffFE6C4D),),
                            SizedBox(width: 12,),
                            Text('Unlock Our Top Charts',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 16,
                              ),)
                          ],
                        ),
                        SizedBox(height: 26,),
                        Row(
                          children: [
                            Icon(Icons.check_circle_rounded,
                              color: Color(0xffFE6C4D),),
                            SizedBox(width: 12,),
                            Text('Save More than 1,000 Docs',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 16,
                              ),)
                          ],
                        ),
                        SizedBox(height: 26,),
                        Row(
                          children: [
                            Icon(Icons.check_circle_rounded,
                              color: Color(0xffFE6C4D),),
                            SizedBox(width: 12,),
                            Text('24/7 Customer Support',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 16,
                              ),)
                          ],
                        ),
                        SizedBox(height: 26,),
                        Row(
                          children: [
                            Icon(Icons.check_circle_rounded,
                              color: Color(0xffFE6C4D),),
                            SizedBox(width: 12,),
                            Text("Track Company’s Spending",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 16,
                              ),)
                          ],
                        ),
                        SizedBox(height: 48),
                        Container(
                          width: double.infinity,
                          height: 55,
                          child: TextButton( 
                            style: TextButton.styleFrom(
                              shadowColor: Color(0xffE57C73),
                              elevation: 20,
                              backgroundColor: Color(0xffE57C73),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(31)
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SusbscribePage())
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(width: 35),
                                Text('Subscribe Now',
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                  ),),
                                Icon(Icons.arrow_circle_right_sharp,
                                  color: Color(0xffFAACA5),),
                              ],
                            ) 
                            ,)
                        ),
                        SizedBox(height: 25,),
                        Text('Contact Support',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16,
                            decoration: TextDecoration.underline
                          ),)
                      ], 
                    ),
                    ),
                  ],
                ),
              )
        ],
      ),
    );
  }
}