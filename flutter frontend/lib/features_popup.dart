//3
import 'package:crop_care/landing_page.dart';
import 'package:flutter/material.dart';
import 'signup_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import "package:jwt_decoder/jwt_decoder.dart";
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'user_selector_page.dart';
import './userAuthentication/loginPage.dart';
class Feature3 extends StatefulWidget {
  final token;
  const Feature3({
    @required this.token,
    Key? key,
  }) : super(key: key);
  @override
  State<Feature3> createState() => _Feature3State();
}
class _Feature3State extends State<Feature3> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Color(0xFFF3F2F2)),
              child: Stack(
                children: [
                  widget1(context),
                  widget2(context),
                  photo(context),
                  widget4(context),
                ],
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
              'AI Chat Box',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF285352),
                fontSize: MediaQuery.of(context).size.width * 0.08,
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
      left: MediaQuery.of(context).size.width * 0.15,
      top: MediaQuery.of(context).size.height * 0.18,
      right: MediaQuery.of(context).size.width * 0.15,
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 25,
        child: Text(
          'Personalized agricultural assistance, anytime, anywhere.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF36946F),
            fontSize: MediaQuery.of(context).size.width * 0.050,
            fontFamily: 'Lora',
            fontWeight: FontWeight.w400,
            height: 1.5, // Adjust the line height as needed
          ),
        ),
      ),
    );
  }
  Widget widget4(BuildContext context) {
    return Positioned(
      left: MediaQuery.of(context).size.width * 0.15,
      top: MediaQuery.of(context).size.height * 0.76,
      right: MediaQuery.of(context).size.width * 0.15,
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 25,
        child: Text(
          'Available 24x7',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF36946F),
            fontSize: MediaQuery.of(context).size.width * 0.048,
            fontFamily: 'Lora',
            fontWeight: FontWeight.w400,
            height: 1.5,
          ),
        ),
      ),
    );
  }
  Widget photo(BuildContext context){
    return Positioned(
      left: MediaQuery.of(context).size.width * 0.10,
      top: MediaQuery.of(context).size.height * 0.35,
      right: MediaQuery.of(context).size.width * 0.10,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Container(
          width: 500,
          height: 330,
          decoration: ShapeDecoration(
            image: DecorationImage(
              image: AssetImage("images/p-1.png"),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(900),
            ),
          ),
        ),
      ),
    );
  }
}
class Feature2 extends StatefulWidget {
  @override
  State<Feature2> createState() => _Feature2State();
}
class _Feature2State extends State<Feature2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Color(0xFFF3F2F2)),
              child: Stack(
                children: [
                  widget1(context),
                  widget2(context),
                  photo(context),
                  widget4(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget widget1(BuildContext context) {
    return Positioned(
      left: MediaQuery.of(context).size.width * 0.10,
      top: MediaQuery.of(context).size.height * 0.12,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Community Support',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF285352),
                fontSize: MediaQuery.of(context).size.width * 0.08,
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
      left: MediaQuery.of(context).size.width * 0.15,
      top: MediaQuery.of(context).size.height * 0.18,
      right: MediaQuery.of(context).size.width * 0.15,
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 25,
        child: Text(
          'Our App Boasts A Team Of Seasoned Expert, Ready To Assist You Promptly.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF36946F),
            fontSize: MediaQuery.of(context).size.width * 0.045,
            fontFamily: 'Lora',
            fontWeight: FontWeight.w400,
            height: 1.5, // Adjust the line height as needed
          ),
        ),
      ),
    );
  }
  Widget widget4(BuildContext context) {
    return Positioned(
      left: MediaQuery.of(context).size.width * 0.15,
      top: MediaQuery.of(context).size.height * 0.76,
      right: MediaQuery.of(context).size.width * 0.15,
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 25,
        child: Text(
          'Your Crop\'s Health Is In Capable Hands.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF36946F),
            fontSize: MediaQuery.of(context).size.width * 0.04,
            fontFamily: 'Lora',
            fontWeight: FontWeight.w400,
            height: 1.5,
          ),
        ),
      ),
    );
  }
  Widget photo(BuildContext context){
    return Positioned(
      left: MediaQuery.of(context).size.width * 0.10,
      top: MediaQuery.of(context).size.height * 0.35,
      right: MediaQuery.of(context).size.width * 0.10,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Container(
          width: 500,
          height: 330,
          decoration: ShapeDecoration(
            image: DecorationImage(
              image: AssetImage("images/p-2.png"),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(900),
            ),
          ),
        ),
      ),
    );
  }
}
class Feature1 extends StatefulWidget {
  @override
  State<Feature1> createState() => _Feature1State();
}
class _Feature1State extends State<Feature1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Color(0xFFF3F2F2)),
              child: Stack(
                children: [
                  widget1(context),
                  widget2(context),
                  photo(context),
                  widget4(context),
                ],
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
              'Automatic Disease Detection',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF285352),
                fontSize: MediaQuery.of(context).size.width * 0.08,
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
      left: MediaQuery.of(context).size.width * 0.15,
      top: MediaQuery.of(context).size.height * 0.22,
      right: MediaQuery.of(context).size.width * 0.15,
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 25,
        child: Text(
          'Experience The Future Of Farming With Our App\'s Automatic Disease Detection.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF36946F),
            fontSize: MediaQuery.of(context).size.width * 0.040,
            fontFamily: 'Lora',
            fontWeight: FontWeight.w400,
            height: 1.5, // Adjust the line height as needed
          ),
        ),
      ),
    );
  }
  Widget widget4(BuildContext context) {
    return Positioned(
      left: MediaQuery.of(context).size.width * 0.15,
      top: MediaQuery.of(context).size.height * 0.76,
      right: MediaQuery.of(context).size.width * 0.15,
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 25,
        child: Text(
          'Detect Crop Issues Effortlessly For Healthier Yields.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF36946F),
            fontSize: MediaQuery.of(context).size.width * 0.04,
            fontFamily: 'Lora',
            fontWeight: FontWeight.w400,
            height: 1.5,
          ),
        ),
      ),
    );
  }
  Widget photo(BuildContext context){
    return Positioned(
        left: MediaQuery.of(context).size.width * 0.10,
        top: MediaQuery.of(context).size.height * 0.35,
        right: MediaQuery.of(context).size.width * 0.10,
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
      child: Container(
        width: 600,
        height: 340,
        decoration: ShapeDecoration(
          image: DecorationImage(
            image: AssetImage("images/disease_detection_img.png"),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(900),
          ),
        ),
      ),
      ),
        );
  }
}
class Feature4 extends StatefulWidget {
  @override
  State<Feature4> createState() => _Feature4State();
}
class _Feature4State extends State<Feature4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => User()));
              },
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(color: Color(0xFFF3F2F2)),
                child: Stack(
                  children: [
                    widget1(context),
                    widget2(context),
                    photo(context),
                    widget4(context),
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
              'Weather Forecast',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF285352),
                fontSize: MediaQuery.of(context).size.width * 0.08,
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
      left: MediaQuery.of(context).size.width * 0.15,
      top: MediaQuery.of(context).size.height * 0.20,
      right: MediaQuery.of(context).size.width * 0.15,
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 25,
        child: Text(
          'Delivering Real Time Weather Forecasts And Updates.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF36946F),
            fontSize: MediaQuery.of(context).size.width * 0.040,
            fontFamily: 'Lora',
            fontWeight: FontWeight.w400,
            height: 1.5, // Adjust the line height as needed
          ),
        ),
      ),
    );
  }
  Widget widget4(BuildContext context) {
    return Positioned(
      left: MediaQuery.of(context).size.width * 0.15,
      top: MediaQuery.of(context).size.height * 0.76,
      right: MediaQuery.of(context).size.width * 0.15,
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 25,
        child: Text(
          'Ensuring Successful Harvests Year Around',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF36946F),
            fontSize: MediaQuery.of(context).size.width * 0.045,
            fontFamily: 'Lora',
            fontWeight: FontWeight.w400,
            height: 1.5,
          ),
        ),
      ),
    );
  }
  Widget photo(BuildContext context){
    return Positioned(
      left: MediaQuery.of(context).size.width * 0.10,
      top: MediaQuery.of(context).size.height * 0.35,
      right: MediaQuery.of(context).size.width * 0.10,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Container(
          width: 500,
          height: 330,
          decoration: ShapeDecoration(
            image: DecorationImage(
              image: AssetImage("images/image19.png"),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(900),
            ),
          ),
        ),
      ),
    );
  }
}

class Sliding_pages extends StatelessWidget {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F2F2),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              children: [
                Feature1(),
                Feature2(),
                Feature3(),
                Feature4(),
              ],
            ),
          ),
          SmoothPageIndicator(
              controller: _controller,
              count: 4,
            effect: JumpingDotEffect(
              activeDotColor: Color(0xFF36946F),
              dotColor: Color(0xFF36946F).withOpacity(0.5),
              dotHeight: 20,
              dotWidth: 20,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 85,
            decoration: BoxDecoration(
              color: Color(0xFFF3F2F2),
            ),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>(SignInPage())));
              },
              child: Container(
                width: 70,
                color: Color(0xFFF3F2F2),
                child: Text(
                  'Skip',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF285352),
                    fontSize: 16,
                    fontFamily: 'Merriweather',
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
