import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/utils/routes.dart';

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
     

     
        color: Colors.blue,
       
        child: Column(
          children: [
            Image.asset(
              "assets/images/logo.png.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "HI-PURE $name",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue[900]),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [ 
                  TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Username", labelText: "Username"),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      }),

                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),

                  InkWell(
                    onTap: () {
                      setState(() {
                        changeButton = true;
                      });
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),


                  // ElevatedButton(
                  //   child: Text("Login",
                  //       style: TextStyle(
                  //           color: Colors.blue[900],
                  //           fontWeight: FontWeight.w700)),
                  //   style: TextButton.styleFrom(
                  //     minimumSize: Size(100, 40),
                  //     backgroundColor: Colors.lightBlue[200],
                  //   ),
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  // )
                ],
              ),
            ),
          ],
        ),
       );
  }
}
