import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final int days = 30;
  final String name = "flutter app";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
        
    
        title: Text("catalog App"),
        
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of my $name")
          
          
          ,
        ), 
      ), 
      drawer: Drawer(),
    );
  }
}
