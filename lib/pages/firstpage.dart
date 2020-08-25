
import 'package:flutter/material.dart';
import 'package:flutter_numbergamez/Largest.dart';
import 'package:flutter_numbergamez/pages/Smallest.dart';
import 'package:flutter_numbergamez/pages/evenodd.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(50),
child: Column(
  children: [
    SizedBox(height: 20.0,),
    GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Largest()));
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
        height: 80,
        width: 600,
        child: Center(child: Text("Find the largest")),
      ),
    ),
    SizedBox(height: 50.0,),
    GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Smallest()));
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
        height: 80,
        width: 600,
        child: Center(child: Text("Find the smallest")),
      ),
    ),
    SizedBox(height: 50.0,),
    GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Evenorodd()));
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
//        gradient: LinearGradient(),
          color: Colors.blue,
        ),
        height: 80,
        width: 600,
        child: Center(child: Text("Check even or odd")),
      ),
    ),


  ],
),
      ),
    );
  }
}
