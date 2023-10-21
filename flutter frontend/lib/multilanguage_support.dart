//2

import 'package:flutter/material.dart';
import 'features_popup.dart';

class Language extends StatefulWidget {
   final token;
  const Language({@required this.token, super.key});
  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.15),
              child: Text(
                'Language',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF285352),
                  fontSize: screenHeight * 0.045,
                  fontFamily: 'Lora',
                  fontWeight: FontWeight.w600,
                  height: screenHeight * 0.0003,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.04),
              child: Text(
                'Choose your language',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF36946F),
                  fontSize: screenHeight * 0.025,
                  fontFamily: 'Lora',
                  fontWeight: FontWeight.w400,
                  height: screenHeight * 0.0006,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: screenHeight * 0.08, top: screenHeight * 0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
              children: [
                for (var language in [
                  'English',
                  'हिंदी',
                  'ગુજરાતી',
                  'ਪੰਜਾਬੀ',
                  'मराठी',
                ])
                  Padding(
                    padding: EdgeInsets.only(bottom: screenHeight * 0.04),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start, // Align everything to the left
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: screenHeight * 0.035,
                          height: screenHeight * 0.035,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: screenHeight * 0.003, color: Color(0xFF2D3648)),
                              borderRadius: BorderRadius.circular(screenHeight * 1.168457),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenHeight * 0.02,
                        ),
                        Expanded(
                          child: Text(
                            language,
                            textAlign: TextAlign.left, // Align text to the left
                            style: TextStyle(
                              color: Color(0xFF285352),
                              fontSize: screenHeight * 0.04,
                              fontFamily: 'Lora',
                              fontWeight: FontWeight.w600,
                              height: screenHeight * 0.0012,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * 0.090,
          ),
          Container(
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => Sliding_pages()));
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
        ],
      ),
    );
  }
}
