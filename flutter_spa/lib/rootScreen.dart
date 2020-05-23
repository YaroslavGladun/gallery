import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_spa/validators.dart';
import 'package:flutter_spa/wgs/transparentCard.dart';

class RootScreen extends StatefulWidget {
  static const route = "/rootScreen";

  @override
  State<StatefulWidget> createState() => RootScreenState();
}

class RootScreenState extends State<RootScreen> {
  String _email = "";
  String _password = "";
  final _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: 400.0,
                child: Form(
                  key: _formKey,
                  autovalidate: _autoValidate,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(height: 10.0,),
                      Text("Email:"),
                      Container(
                        height: 10.0,
                      ),
                      TextFormField(
                        validator: Validators.emailValidator,
                        decoration: InputDecoration(
                          hintText: "Enter email",
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 20.0,
                      ),
                      Text("Password:"),
                      Container(
                        height: 10.0,
                      ),
                      TextFormField(
                        obscureText: true,
                        validator: Validators.passwordValidator,
                        decoration: InputDecoration(
                          hintText: "Enter password",
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Container( width: double.infinity,child:  FlatButton(
                          child: Text("Sign in", style: TextStyle(fontWeight: FontWeight.bold),),
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              // TODO: move to home screen
                            }
                          },
                        ),),
                      ),
                      Center(
                        child: Container( width: double.infinity,child:  FlatButton(
                          child: Text("Don't have account yet?", style: TextStyle(),),
                          onPressed: () {
                            // TODO: move to registration page
                          },
                        ),),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ) /* add child content here */,
      ),
    );
  }
}
