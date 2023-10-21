import 'package:flutter/material.dart';
import 'landing_page.dart';
class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final fontSize = screenWidth * 0.04;
    return Scaffold(
      backgroundColor: Color(0xFFF3F2F2),
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context) => User()));
              },
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(color: Color(0xFFF3F2F2)),
                child: Stack(
                  children: [
                    widget1(context),
                    widget2(context),
                    photo(context),
                    Header(context),
                    Positioned(
                      left: screenWidth * 0.08,
                      top: screenHeight * 0.83,
                      child: Container(
                        height: screenHeight * 0.065,
                        width: MediaQuery.of(context).size.width * 0.85,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(screenHeight * 0.020),
                            ),
                            elevation: 7,
                            backgroundColor: Color(0xFF36946F),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LandingPage()));
                          },
                          child: Text(
                            'Continue',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenHeight * 0.03,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: screenHeight * 0.0015,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget widget1(BuildContext context) {
    return Positioned(
      left: MediaQuery.of(context).size.width * 0.15,
      top: MediaQuery.of(context).size.height * 0.12,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Where are you from?',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF285352),
                fontSize: MediaQuery.of(context).size.width * 0.09,
                fontFamily: 'Lora',
                fontWeight: FontWeight.w600,
                height: 1.0, // Adjust the line height as needed
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget widget2(BuildContext context) {
    return Positioned(
      left: MediaQuery.of(context).size.width * 0.04,
      top: MediaQuery.of(context).size.height * 0.23,
      // right: MediaQuery.of(context).size.width * 0.15,
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 25,
        child: Text(
          'Give Device Location',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF36946F),
            fontSize: MediaQuery.of(context).size.width * 0.070,
            fontFamily: 'Lora',
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.w400,
            height: 1.5, // Adjust the line height as needed
          ),
        ),
      ),
    );
  }
  Widget photo(BuildContext context){
    return Positioned(
      left: MediaQuery.of(context).size.width * 0.10,
      top: MediaQuery.of(context).size.height * 0.35,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Container(
          width: 600,
          height: 340,
          decoration: ShapeDecoration(
            image: DecorationImage(
              image: AssetImage("images/image_6.png"),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(900),
            ),
          ),
        ),
      ),
    );
  }
  Widget Header(BuildContext context){
    return Container(
      width: MediaQuery.of(context).size.width*0.92,
      height: MediaQuery.of(context).size.height*0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding:EdgeInsets.only(left: MediaQuery.of(context).size.width*0.06),
            child: Text(
              'Step 1 of 2',
              style: TextStyle(
                color: Color(0xFF36946F),
                fontSize: 18,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 3.3,
              ),
            ),
          ),
          Text(
            'Exit',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF36946F),
              fontSize: 18,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              height: 3.5,
            ),
          ),
        ],
      ),
    );
  }
}
