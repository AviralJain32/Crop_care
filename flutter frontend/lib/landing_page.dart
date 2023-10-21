import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'chatbox/Messsages.dart';
import 'scan_page/scan_backend.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class LandingPage extends StatefulWidget {
    final token;//change
    const LandingPage({@required this.token,super.key});//change
    @override
    State<LandingPage> createState() => _LandingPageState();
}
class _LandingPageState extends State<LandingPage> {
  late int phoneNumber;//change
  void launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      // Could not launch the URL
    }
  }
    @override
    //change add init full
    void initState() {
    // TODO: implement initState
    super.initState();
    Map<String, dynamic> jwtDecodedToken = JwtDecoder.decode(widget.token);

    phoneNumber = jwtDecodedToken["phoneNumber"];
  }

    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Color(0xFFF3F2F2),
        body: Column(
          children: [
            Padding(
              padding:EdgeInsets.only(top: 30.0,left: 25,right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.list_sharp,
                    size: 35,
                    color: Color(0xFF2D3648),
                  ),
                  Icon(
                    Icons.person,
                    size: 35,
                    color: Color(0xFF285352),
                  ),
                ],
              ),
            ),
            Container(
              width: 390,
              height: 712,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                  child: Column(
                    children:[
                      Padding(
                        padding:EdgeInsets.only(top: 59.0),
                        child: Text(
                          'Government Schemes',
                          style: TextStyle(
                            color: Color(0xFF36946F),
                            fontSize: 33,
                            fontFamily: 'InterB',
                            fontWeight: FontWeight.w700,
                            height: 0.04,
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            GestureDetector(
                              onTap: (){
                                launchURL('https://www.enam.gov.in/web/');
                              },
                              child: Container(
                                width: 380,
                                height: 238,
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  color: Colors.white.withOpacity(0.75),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(width: 1.61, color: Color(0xFF2D3648)),
                                    borderRadius: BorderRadius.circular(6.42),
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: 380,
                                      height: 175,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("images/pyojna.png"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      padding:EdgeInsets.all(12.85),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(height: 7),
                                                Text(
                                                  'Pradhan Mantri Fasal Bima Yojna',
                                                  style: TextStyle(
                                                    color: Color(0xFF2D3648),
                                                    fontSize: 17.06,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w700,
                                                    height: 0.09,
                                                  ),
                                                ),
                                                SizedBox(height: 15),
                                                Text(
                                                  '(PMFBY)',
                                                  style: TextStyle(
                                                    color: Color(0xFF717D96),
                                                    fontSize: 13.24,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0.13,
                                                    letterSpacing: -0.11,
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
                              ),
                            ),
                            SizedBox(width: 10),
                            GestureDetector(
                              onTap: (){
                                launchURL('https://www.enam.gov.in/web/');
                              },
                              child: Container(
                                width: 380,
                                height: 238,
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  color: Colors.white.withOpacity(0.75),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(width: 1.61, color: Color(0xFF2D3648)),
                                    borderRadius: BorderRadius.circular(6.42),
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: 380,
                                      height: 175,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("images/enumyojna.png"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      padding:EdgeInsets.all(12.85),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(height: 7),
                                                Text(
                                                  'E-Nam',
                                                  style: TextStyle(
                                                    color: Color(0xFF2D3648),
                                                    fontSize: 17.06,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w700,
                                                    height: 0.09,
                                                  ),
                                                ),
                                                SizedBox(height: 15),
                                                Text(
                                                  'Description',
                                                  style: TextStyle(
                                                    color: Color(0xFF717D96),
                                                    fontSize: 13.24,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0.13,
                                                    letterSpacing: -0.11,
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
                              ),
                            ),
                            SizedBox(width: 10),
                            GestureDetector(
                              onTap: (){
                                launchURL('https://pmkisan.gov.in/');
                              },
                              child: Container(
                                width: 380,
                                height: 238,
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  color: Colors.white.withOpacity(0.75),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(width: 1.61, color: Color(0xFF2D3648)),
                                    borderRadius: BorderRadius.circular(6.42),
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: 380,
                                      height: 175,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("images/kisanyojna.png"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      padding:EdgeInsets.all(12.85),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(height: 7),
                                                Text(
                                                  'PM Kisan Samman Nidhi Yojana',
                                                  style: TextStyle(
                                                    color: Color(0xFF2D3648),
                                                    fontSize: 17.06,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w700,
                                                    height: 0.09,
                                                  ),
                                                ),
                                                SizedBox(height: 15),
                                                Text(
                                                  '(PKSNY)',
                                                  style: TextStyle(
                                                    color: Color(0xFF717D96),
                                                    fontSize: 13.24,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0.13,
                                                    letterSpacing: -0.11,
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
                              ),
                            ),
                            SizedBox(width: 10),
                            GestureDetector(
                              onTap: (){
                                launchURL('https://www.bankbazaar.com/saving-schemes/gramin-bhandaran-yojana.html');
                              },
                              child: Container(
                                width: 380,
                                height: 238,
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  color: Colors.white.withOpacity(0.75),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(width: 1.61, color: Color(0xFF2D3648)),
                                    borderRadius: BorderRadius.circular(6.42),
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: 380,
                                      height: 175,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("images/bhandaryojna.png"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      padding:EdgeInsets.all(12.85),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(height: 7),
                                                Text(
                                                  'Gramin Bhandaran Yojna',
                                                  style: TextStyle(
                                                    color: Color(0xFF2D3648),
                                                    fontSize: 17.06,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w700,
                                                    height: 0.09,
                                                  ),
                                                ),
                                                SizedBox(height: 15),
                                                Text(
                                                  'description',
                                                  style: TextStyle(
                                                    color: Color(0xFF717D96),
                                                    fontSize: 13.24,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0.13,
                                                    letterSpacing: -0.11,
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
                              ),
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                      SizedBox(height: 70),
                      Text(
                        'Detect disease',
                        style: TextStyle(
                          color: Color(0xFF285352),
                          fontSize: 48,
                          fontFamily: 'InterB',
                          fontWeight: FontWeight.w600,
                          height: 0.02,
                          letterSpacing: 0.48,
                        ),
                      ),
                      SizedBox(height: 35),
                      Container(
                        height: MediaQuery.sizeOf(context).height * 0.078,
                        width: MediaQuery.of(context).size.width * 0.88,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).height * 0.010),
                            ),
                            elevation: 7,
                            backgroundColor: Color(0xFF36946F),
                          ),
                          onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => TFlitemode()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Scan',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: MediaQuery.sizeOf(context).height * 0.04,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w900,
                                  height: MediaQuery.sizeOf(context).height * 0.0015,
                                ),
                              ),
                              SizedBox(width: 25),
                              Icon(
                                Icons.qr_code_scanner_outlined,
                                size: 35,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Padding(
                        padding:EdgeInsets.only(right: 210.0),
                        child: Text(
                          'Weather',
                          style: TextStyle(
                            color: Color(0xFF285352),
                            fontSize: 32,
                            fontFamily: 'InterB',
                            fontWeight: FontWeight.w800,
                            height: 0.04,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 10),
                            Container(
                              width: 167,
                              height: 160,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: Color(0x89FFDE32),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 30,
                                    top: 90,
                                    child: Icon(
                                      Icons.sunny,
                                      color: Colors.black54,
                                      size: 25,
                                    ),
                                  ),
                                  Positioned(
                                    left: 65,
                                    top: 110,
                                    child: Text(
                                      'Sunny',
                                      style: TextStyle(
                                        color: Color(0xFF262626),
                                        fontSize: 28.94,
                                        fontFamily: 'InterB',
                                        fontWeight: FontWeight.w500,
                                        height: 0.05,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 16,
                                    top: 45,
                                    child: Text(
                                      'Monday',
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.8500000238418579),
                                        fontSize: 32,
                                        fontFamily: 'InterB',
                                        fontWeight: FontWeight.w500,
                                        height: 0.04,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 16,
                                    top: 65,
                                    child: Text(
                                      '19 October',
                                      style: TextStyle(
                                        color: Color(0xFF716D6D),
                                        fontSize: 16,
                                        fontFamily: 'InterB',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 65,
                                    top: 129,
                                    child: Text(
                                      '35 °C',
                                      style: TextStyle(
                                        color: Color(0xFF716D6D),
                                        fontSize: 18,
                                        fontFamily: 'InterB',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 15),
                            Container(
                              width: 167,
                              height: 160,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: Color(0xADD7D7D7),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 30,
                                    top: 90,
                                    child: Icon(
                                      Icons.cloud,
                                      color: Colors.black54,
                                      size: 25,
                                    ),
                                  ),
                                  Positioned(
                                    left: 65,
                                    top: 110,
                                    child: Text(
                                      'Rainy',
                                      style: TextStyle(
                                        color: Color(0xFF262626),
                                        fontSize: 28.94,
                                        fontFamily: 'InterB',
                                        fontWeight: FontWeight.w500,
                                        height: 0.05,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 16,
                                    top: 45,
                                    child: Text(
                                      'Tuesday',
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.8500000238418579),
                                        fontSize: 32,
                                        fontFamily: 'InterB',
                                        fontWeight: FontWeight.w500,
                                        height: 0.04,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 16,
                                    top: 65,
                                    child: Text(
                                      '20 October',
                                      style: TextStyle(
                                        color: Color(0xFF716D6D),
                                        fontSize: 16,
                                        fontFamily: 'InterB',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 65,
                                    top: 129,
                                    child: Text(
                                      '26 °C',
                                      style: TextStyle(
                                        color: Color(0xFF716D6D),
                                        fontSize: 18,
                                        fontFamily: 'InterB',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 15),
                            Container(
                              width: 167,
                              height: 160,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: Color(0x89FFDE32),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 30,
                                    top: 90,
                                    child: Icon(
                                      Icons.sunny,
                                      color: Colors.black54,
                                      size: 25,
                                    ),
                                  ),
                                  Positioned(
                                    left: 65,
                                    top: 110,
                                    child: Text(
                                      'Sunny',
                                      style: TextStyle(
                                        color: Color(0xFF262626),
                                        fontSize: 28.94,
                                        fontFamily: 'InterB',
                                        fontWeight: FontWeight.w500,
                                        height: 0.05,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 16,
                                    top: 45,
                                    child: Text(
                                      'Wednesday',
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.8500000238418579),
                                        fontSize: 24,
                                        fontFamily: 'InterB',
                                        fontWeight: FontWeight.w500,
                                        height: 0.04,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 16,
                                    top: 65,
                                    child: Text(
                                      '21 October',
                                      style: TextStyle(
                                        color: Color(0xFF716D6D),
                                        fontSize: 16,
                                        fontFamily: 'InterB',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 65,
                                    top: 129,
                                    child: Text(
                                      '32 °C',
                                      style: TextStyle(
                                        color: Color(0xFF716D6D),
                                        fontSize: 18,
                                        fontFamily: 'InterB',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 15),
                            Container(
                              width: 167,
                              height: 160,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: Color(0xADD7D7D7),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 30,
                                    top: 90,
                                    child: Icon(
                                      Icons.cloud,
                                      color: Colors.black54,
                                      size: 25,
                                    ),
                                  ),
                                  Positioned(
                                    left: 65,
                                    top: 110,
                                    child: Text(
                                      'Cloudy',
                                      style: TextStyle(
                                        color: Color(0xFF262626),
                                        fontSize: 28.94,
                                        fontFamily: 'InterB',
                                        fontWeight: FontWeight.w500,
                                        height: 0.05,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 16,
                                    top: 45,
                                    child: Text(
                                      'Thursday',
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.8500000238418579),
                                        fontSize: 30,
                                        fontFamily: 'InterB',
                                        fontWeight: FontWeight.w500,
                                        height: 0.04,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 16,
                                    top: 65,
                                    child: Text(
                                      '22 October',
                                      style: TextStyle(
                                        color: Color(0xFF716D6D),
                                        fontSize: 16,
                                        fontFamily: 'InterB',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 65,
                                    top: 129,
                                    child: Text(
                                      '34s °C',
                                      style: TextStyle(
                                        color: Color(0xFF716D6D),
                                        fontSize: 18,
                                        fontFamily: 'InterB',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 15),
                          ],
                        ),
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
              ),
            ),
          ],
        ),
        floatingActionButton: Container(
          width: 85,
          child: FloatingActionButton(
            child:Text(
                'Ask..',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            elevation: 15,
            mini: false,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            backgroundColor: Color(0xFF2D3648),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
        ),
        bottomNavigationBar: Container(
          color: Color(0xFF36946F),
          child: Padding(
            padding:EdgeInsets.symmetric(horizontal: 18,vertical: 4),
            child: GNav(
              haptic: true,
              gap: 8,
              padding: EdgeInsets.all(22),
              backgroundColor: Color(0xFF36946F),
              color: Color(0xFFF3F3F3),
              activeColor: Color(0xFF2D3648),
              iconSize: 27,
              tabBackgroundColor: Colors.black12,
              tabs: const[
                GButton(
                    icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                    icon: Icons.camera_alt,
                text: 'Camera',
                ),
                GButton(
                    icon: Icons.group_add_rounded,
                  text: 'Community',
                ),
                GButton(
                    icon: Icons.history,
                  text: 'History',
                ),
              ],
              onTabChange: (index){
                if(index==0){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LandingPage()));
                }
                if(index==1){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TFlitemode()));
                }
                if(index==2){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LandingPage()));
                }
                if(index==3){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LandingPage()));
                }
              },
            ),
          ),
        ),
      );
    }
  }