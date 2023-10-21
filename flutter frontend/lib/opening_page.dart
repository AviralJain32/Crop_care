//1

import 'dart:async';
import 'package:crop_care/main.dart';

import 'multilanguage_support.dart';
import 'package:flutter/material.dart';

class OpeningPage extends StatefulWidget {
  final token;
  // OpeningPage(token);
  const OpeningPage({@required this.token, super.key});
  @override
  State<OpeningPage> createState() => _OpeningPageState();
}

class _OpeningPageState extends State<OpeningPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => Language()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            opacity: 10,
            image: AssetImage("images/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Flexible(
            child: Text(
              'CropCare',
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width / 7,
                fontFamily: 'Lora',
                fontWeight: FontWeight.w700,
                height: 0.9,
                letterSpacing: 0.56,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
