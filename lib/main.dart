import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

       themeMode: ThemeMode.light,
      theme:ThemeData(primarySwatch: Colors.deepPurple,
      primaryTextTheme: GoogleFonts.latoTextTheme()
      ),
      
      initialRoute: "/home",
     routes: { 
     "/":(context) => Loginpage(),
     "/home":(context) => Homepage(),
     "/Login":(context)=> Loginpage()
     },
    )
    ;
  }
}
