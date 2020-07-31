

import 'package:chef_online/widgets/ChefButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC10000),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xffC10000),
            image: DecorationImage(
                image: AssetImage('assets/bg.jpeg'),
                fit: BoxFit.cover
            ),
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Stack(
              children: <Widget>[

                Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width*0.80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: <Widget>[
                         Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.white,
                          ),
                          child:TextField(
                          decoration: InputDecoration(
                            fillColor: Color(0xffC10000),
                            focusColor: Colors.white,
                            hintText: "email@example.com",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.grey, width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.white, width: 1),
                            ),
                          ),
                          style: TextStyle(fontSize: 16.0, color: Colors.grey[800]),
                        )),
                        SizedBox(
                          height: 20,
                        ),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.white,
                          ),
                          child:TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              fillColor: Color(0xffC10000),
                              focusColor: Colors.white,
                              hintText: "password",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(color: Colors.grey, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(color: Colors.white, width: 1),
                              ),
                            ),
                            style: TextStyle(fontSize: 16.0, color: Colors.grey[800]),
                          )),
                          SizedBox(height: 40),
                          ChefButton(
                            title: 'Criar Conta',
                            color: Color(0xffC10000),
                            onPressed: (){
                              Navigator.of(context).pushNamed('home_screen');
                            }

                          ),
                      SizedBox(height: 20),
                      ChefButton(
                          title: 'Entrar com o facebook',
                          color: Color(0xff3B5998),
                          onPressed: (){}

                      ),
                  ]),
                )

              ],
            )
          ),
        ),
      )
    );
  }
}