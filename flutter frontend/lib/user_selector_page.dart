import 'package:crop_care/signup_page.dart';
import 'package:flutter/material.dart';
import './userAuthentication/loginPage.dart';
class User extends StatelessWidget {
  const User({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final imageSize = screenWidth * 0.4;
    final textSize = screenWidth * 0.09;
    return Scaffold(
      backgroundColor: Color(0xFFF3F3F3),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SignIn()));
              },
              child: Container(
                height: imageSize,
                width: imageSize,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/farmer1.png"),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(imageSize / 2),
                        ),
                      ),
                    ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Text(
                    'Farmer',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: textSize,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 1.0, // Adjust as needed
                    ),
                  ),
            SizedBox(
              height: screenHeight * 0.06,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SignInPage()));
              },
              child: Container(
                height: imageSize,
                width: imageSize,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/expert2.png"),
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(imageSize / 2),
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Text(
              'Expert',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: textSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 1.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
