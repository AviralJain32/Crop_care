import 'dart:io';
import 'package:crop_care/chatbox/Messsages.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite_v2/tflite_v2.dart';
class TFlitemode extends StatefulWidget {
  const TFlitemode({super.key});
  @override
  State<TFlitemode> createState() => _TFlitemodeState();
}
class _TFlitemodeState extends State<TFlitemode> {
  late File _image;
  late List _results;
  bool imageSelect = false;
  bool results = false;
  String label='';
  String description='Use of proper plant spacing to provide adequate air circulation and the use of drip irrigation.';
  String description1='Use resistant corn hybrids, conventional tillage where appropriate, and crop rotation. Foliar fungicides can also be effective';
  String description2='Wash seeds for 40 minutes in diluted Clorox.';
  String description3='Use of proper plant spacing to provide adequate air circulation and the use of drip irrigation.';
  @override
  void initState() {
    super.initState();
    loadmodel();
  }
  Future loadmodel() async{
    Tflite.close();
    String res;
    res = (await Tflite.loadModel(model: 'assets/model.tflite',labels: 'assets/classes.txt'))!;
    print("Models loading status : $res");
  }
  Future imageClassification(File image) async{
    var recognitions = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 1,
      threshold: 0.1,
      imageMean: 127.5,
      imageStd: 127.5,
    );
    if(recognitions!=null){
      results=true;
    }
    else{
      results=false;
    }
    setState((){
      _results = recognitions!;
      results=true;
      _image = image;
      imageSelect = true;
      if (label == 'Corn__gray_leaf_spot'){
        description = description1;
      }
      else if(label=='Pepper_bell__bacterial_spot')
      {
        description=description2;
      }
      else if(label=='Strawberry__leaf_scorch')
      {
        description=description3;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF36946F),
        title: Text('Plant Disease Detection'),
      ),
      body: ListView(
        children: [
          (imageSelect)?Container(
            margin: const EdgeInsets.all(10),
            child: Image.file(_image),
          ): Container(
            margin: EdgeInsets.all(10),
            child: const Opacity(
              opacity: 0.8,
              child: Center(
                child: Text("No image selected"),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: (imageSelect)?_results.where((result) => result['confidence'] > 0.3).map((result){
                setState(() {
                  label="${result['label']}";
                });
                return Card (
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child:(results)?RichText(
                      text:TextSpan(
                          children: [
                            TextSpan(
                              text:"${result['label']}",
                              style:TextStyle(
                                color: Colors.red,
                                fontSize: 25,
                              ),
                            ),
                            TextSpan(
                              text:'\nDescription-',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.black,
                                fontSize: 25,
                              ),
                            ),
                            TextSpan(
                              text:description,
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                              ),
                            ),
                          ]
                      ),):Text(
                      'Recheck Your Image',
                      style:TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                );
              }).toList():[],
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 280.0),
            child: Column(
              children: [
                Container(
                  width: 75,
                  child: FloatingActionButton(
                    child:Icon(Icons.camera_alt),
                    elevation: 15,
                    mini: false,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                    backgroundColor: Color(0xFF2D3648),
                    onPressed:pickImage2,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 75,
                  child: FloatingActionButton(
                    child:Icon(Icons.image),
                    elevation: 15,
                    mini: false,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                    backgroundColor: Color(0xFF2D3648),
                    onPressed:pickImage1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: 365,
            child: FloatingActionButton(
              child:Text(
                'Ask AI for more Information',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              elevation: 15,
              mini: false,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              backgroundColor: Color(0xFF36946F),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
          ),
        ],
      ),
    );
  }
  Future pickImage1() async{
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
    );
    File image = File(pickedFile!.path);
    imageClassification(image);
  }
  Future pickImage2() async{
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.camera,
    );
    File image = File(pickedFile!.path);
    setState(() {
      imageSelect = false;
      _image = image;
    });
    imageClassification(image);
  }
}