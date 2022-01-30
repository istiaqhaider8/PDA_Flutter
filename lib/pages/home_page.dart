import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_document_assistant/common/theme_helper.dart';

class HomePage extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage>{

  double _headerHight = 250;

  @override
  Widget build(BuildContext context) {
    return commonWidget(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        backgroundColor:Colors.grey.shade200 ,
        body:SingleChildScrollView(
          child: Column(
            children: [
            ],
          ),
        ),
      ),
    );
  }
}


