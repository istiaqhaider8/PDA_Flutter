import 'dart:async';

import 'package:flutter/material.dart';
import 'package:personal_document_assistant/pages/login_page.dart';


class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  bool _isVisible = false;

  _SplashScreenState(){
    new Timer(const Duration(milliseconds: 2500), (){
     setState(() {
       Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => LoginPage()), (route) => false);
     });
    });
    new Timer(
        Duration(milliseconds: 10),(){
          setState(() {
            _isVisible = true;
          });

     });
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: [Theme.of(context).accentColor, Theme.of(context).primaryColor],
          begin: const FractionalOffset(0, 0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode:TileMode.clamp,
        ),
      ),
      child: AnimatedOpacity(
       opacity: _isVisible ? 1.0 : 0,
        duration: Duration(milliseconds: 1200),
        child: Center(
          child: Container(
                child:Image.asset('images/P1.png',fit: BoxFit.cover,),
          ),
        ),
      ),
    );
  }
}