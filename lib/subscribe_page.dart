import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// practice basice state management

class SusbscribePage extends StatefulWidget {

  @override
  State<SusbscribePage> createState() => _SusbscribePageState();
}

class _SusbscribePageState extends State<SusbscribePage> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Center(
            child: Column(
              children: [
                Image.asset('assets/crown.png',
                  height: 100,
                  width: 100,),
                SizedBox(height: 40,),
                Text('Which one you wish\nto Upgrade?',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Color(0xff191919),
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),),
                SizedBox(height: 40,),
                option(
                  0,
                  'assets/pig.png',
                  'Money Security',
                  'support ',
                  '24/7'
                ),
                SizedBox(height: 24,),
                option(
                  1,
                  'assets/bill.png',
                  'Automation',
                  'we provide ',
                  'Invoice'
                ),
                SizedBox(height: 24,),
                option(
                  2,
                  'assets/money.png',
                  'Balance Report',
                  'can up to ',
                  '10k'
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xff6050E7),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text('Upgrade Now',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                  ),),
              ),
              label: ''),
            BottomNavigationBarItem(
              icon: Icon(Icons.arrow_circle_right_outlined,
                color: Colors.white,
                size: 24,),
              label: ''),
          ]),
      ),
    );
  }
  late final int index ;
  late final String imageUrl;
  late final String title;
  late final String caption;
  late final String subCaption;

  Widget option(index, imageUrl, title, caption, subCaption){
    return GestureDetector(
      onTap:() {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
          border: Border.all(
            color: selectedIndex == index ? Color(0xff6050E7) : Color(0xffD9DEEA),
          )
        ),
        child: Row(
          children: [
            SizedBox(width: 17,),
            Image.asset(imageUrl,
              width: 66,
              height: 61,),
            Padding(
              padding: EdgeInsets.fromLTRB(7, 27, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff191919),
                    )),
                    Row(
                      children: [
                        Text(caption,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w300,
                          color: Color(0xffA3A8B8)
                          ),),
                        Text(subCaption,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: Color(0xff5343C2)
                          ),)
                      ],
                    )
                ],
              ),),
            selectedIndex == index ? Padding(
              padding: const EdgeInsets.only(right: 26, left: 58),
              child: Icon(Icons.check_circle_sharp,
                color: Color(0xff6050E7),),
            ) : Container(),
          ],
        ),
      ),
    );
  }
}