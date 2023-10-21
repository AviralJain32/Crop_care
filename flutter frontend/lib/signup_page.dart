import 'package:flutter/material.dart';
import 'location_page.dart';
class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn>{
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final fontSize = screenWidth * 0.04;
    return Scaffold(
      backgroundColor: Color(0xFFF3F2F2),
      body: Column(
        children: [
          Container(
            width: screenWidth,
            height: screenHeight,
            decoration: BoxDecoration(color: Color(0xFFF3F2F2)),
            child: Stack(
              children: [
                Positioned(
                  top: MediaQuery.of(context).size.height*0.040,
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.95,
                    height: MediaQuery.of(context).size.height*0.07,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20,top: 5),
                          child: Icon(
                            Icons.arrow_back,
                            size: 35,
                            color: Color(0xFF285352),
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
                            height: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: screenWidth * 0.35,
                  top: screenHeight * 0.11,
                  child: Text(
                    'Log in',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF285352),
                      fontSize: screenWidth * 0.1,
                      fontFamily: 'Lora',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Positioned(
                  left: screenWidth * 0.35,
                  top: screenHeight * 0.2,
                  child: Text(
                    'Enter Details',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF36946F),
                      fontSize: 18,
                      fontFamily: 'Lora',
                      fontWeight: FontWeight.w400,
                      height: 0.06,
                    ),
                  ),
                ),
                Positioned(
                    left: screenWidth * 0.12,
                    top: screenHeight * 0.28,
                    child: Center(
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.18,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFF36946F),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width*0.026,
                          ),
                          Text(
                            'Sign in with Phone no.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF36946F),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 83,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFF36946F),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                ),
                Stack(
                  children: [
                    Container_widget(context),
                    Container_widget2(context),
                  ],
                ),
                Positioned(
                  left: screenWidth * 0.08,
                  top: screenHeight * 0.789,
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
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
                Positioned(
                  left: screenWidth * 0.23,
                  top: screenHeight * 0.87,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                          color: Color(0xFF36946F),
                          fontSize: fontSize * 0.9,
                          fontFamily: 'Merriweather',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width*0.02,
                      ),
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color(0xFF285352),
                          fontSize: fontSize * 0.8,
                          fontFamily: 'Merriweather',
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget Container_widget(BuildContext context){
    return Positioned(
        left: MediaQuery.of(context).size.width * 0.12,
        top: MediaQuery.of(context).size.height * 0.44,
        child: Container(
          width: MediaQuery.of(context).size.width*0.77,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Phone no.',
                style: TextStyle(
                  color: Color(0xFF36946F),
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  height: 0.08,
                  letterSpacing: -0.14,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.008,
              ),
              TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.phone),
                  hintText: "Phone no.",
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
    );
  }

  Widget Container_widget2(BuildContext context){
    return Positioned(
      left: MediaQuery.of(context).size.width * 0.12,
      top: MediaQuery.of(context).size.height * 0.58,
      child: Container(
        width: MediaQuery.of(context).size.width*0.77,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: TextStyle(
                color: Color(0xFF36946F),
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                height: 0.08,
                letterSpacing: -0.14,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.008,
            ),
            TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.enhanced_encryption),
                hintText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final fontSize = screenWidth * 0.04;
    return Scaffold(
      backgroundColor: Color(0xFFF3F2F2),
      body: Column(
        children: [
          Container(
            width: screenWidth,
            height: screenHeight,
            decoration: BoxDecoration(color: Color(0xFFF3F2F2)),
            child: Stack(
              children: [
                Positioned(
                  top: MediaQuery.of(context).size.height*0.040,
                  left: MediaQuery.of(context).size.width*0.040,
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.91,
                    height: MediaQuery.of(context).size.height*0.06,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Step 1 of 2',
                          style: TextStyle(
                            color: Color(0xFF36946F),
                            fontSize: 18,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 2,
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
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: screenWidth * 0.17,
                  top: screenHeight * 0.12,
                  child: Text(
                    'Create Account',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF285352),
                      fontSize: screenWidth * 0.09,
                      fontFamily: 'Lora',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Positioned(
                  left: screenWidth * 0.30,
                  top: screenHeight * 0.2,
                  child: Text(
                    'Become A Member',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF36946F),
                      fontSize: 18,
                      fontFamily: 'Lora',
                      fontWeight: FontWeight.w400,
                      height: 0.06,
                    ),
                  ),
                ),
                Positioned(
                    left: screenWidth * 0.12,
                    top: screenHeight * 0.28,
                    child: Center(
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.18,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFF36946F),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width*0.026,
                          ),
                          Text(
                            'Sign up with Phone no.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF36946F),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 83,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFF36946F),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                ),
                Stack(
                  children: [
                    Container_widget1(context),
                    Container_widget2(context),
                    Container_widget3(context),
                  ],
                ),
                Positioned(
                  left: screenWidth * 0.08,
                  top: screenHeight * 0.789,
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Location()));
                      },
                      child: Text(
                        'Sign Up',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenHeight * 0.03,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: screenHeight * 0.0013,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: screenWidth * 0.21,
                  top: screenHeight * 0.87,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                          color: Color(0xFF36946F),
                          fontSize: fontSize * 0.9,
                          fontFamily: 'Merriweather',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width*0.02,
                      ),
                      Text(
                        'Log In',
                        style: TextStyle(
                          color: Color(0xFF285352),
                          fontSize: fontSize * 0.8,
                          fontFamily: 'Merriweather',
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget Container_widget2(BuildContext context){
    return Positioned(
      left: MediaQuery.of(context).size.width * 0.12,
      top: MediaQuery.of(context).size.height * 0.5,
      child: Container(
        width: MediaQuery.of(context).size.width*0.77,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Phone no.',
              style: TextStyle(
                color: Color(0xFF36946F),
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                height: 0.08,
                letterSpacing: -0.14,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.008,
            ),
            TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.phone),
                hintText: "Phone no.",
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget Container_widget3(BuildContext context){
    return Positioned(
      left: MediaQuery.of(context).size.width * 0.12,
      top: MediaQuery.of(context).size.height * 0.62,
      child: Container(
        width: MediaQuery.of(context).size.width*0.77,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: TextStyle(
                color: Color(0xFF36946F),
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                height: 0.08,
                letterSpacing: -0.14,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.008,
            ),
            TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.enhanced_encryption),
                hintText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget Container_widget1(BuildContext context){
    return Positioned(
      left: MediaQuery.of(context).size.width * 0.12,
      top: MediaQuery.of(context).size.height * 0.38,
      child: Container(
        width: MediaQuery.of(context).size.width*0.77,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Full Name',
              style: TextStyle(
                color: Color(0xFF36946F),
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                height: 0.08,
                letterSpacing: -0.14,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.008,
            ),
            TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.drive_file_rename_outline_outlined),
                hintText: "Full Name",
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
