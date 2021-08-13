import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      
      debugShowCheckedModeBanner: false,
      
      
      
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.red,
          primaryTextTheme: GoogleFonts.latoTextTheme()),
          


      initialRoute: "/login",
      routes: {
        "/": (context) => Loginpage(),
        MyRoutes.homeRoute: (context) => Homepage(),
        MyRoutes.loginRoute: (context) => Loginpage()
      },
    

          
          
      
          
      
    
    );
  }
}
