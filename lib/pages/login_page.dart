import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_document_assistant/common/theme_helper.dart';
import 'package:personal_document_assistant/pages/home_page.dart';
import 'package:personal_document_assistant/pages/profile_page.dart';

import 'widgets/header_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double _headerHight = 250;
  Key _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: _headerHight,
              child: HeaderWidget(_headerHight, true, Icons.login),
            ),
            SafeArea(
                child: Container(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Column(
                      children: [
                        Text('Hello',
                            style: TextStyle(
                                fontSize: 60, fontWeight: FontWeight.bold)),
                        Text('Singin into your Account',
                            style: TextStyle(color: Colors.grey)),
                        SizedBox(
                          height: 30.0,
                        ),
                        Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                TextField(
                                  decoration: ThemeHelper().textInputDecoration(
                                      'User Name', 'Enter Your User Name'),
                                ),
                                SizedBox(
                                  height: 30.0,
                                ),
                                TextField(
                                  obscureText: true,
                                  decoration: ThemeHelper().textInputDecoration(
                                      'Password', 'Enter Your User Password'),
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
                                  alignment: Alignment.topRight,
                                  child: InkWell(
                                      onTap: () {},
                                      child: Text('Forget Your Password?')),
                                ),
                                Container(
                                  decoration: ThemeHelper()
                                      .buttonBoxDecoration(context),
                                  child: ElevatedButton(
                                    style: ThemeHelper().buttonStyle(),
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HomePage()));
                                    },
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(40, 10, 40, 10),
                                      child: Text(
                                        'Sing In'.toUpperCase(),
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  child:
                                      Text('Don\'t have an account? Create  '),
                                ),
                              ],
                            )),
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}
