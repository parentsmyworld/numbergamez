import 'package:flutter/material.dart';
import 'package:flutter_numbergamez/main.dart';

class Largest extends StatelessWidget {
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
  TextEditingController num3=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Find the Largest")),
        ),
        body: SingleChildScrollView(child: Container(
          padding: EdgeInsets.all(50),
          child: Column(
            children: [
              SizedBox(height: 10,),
              TextField(
                controller: num1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter 1st number",
                  prefixIcon: Icon(Icons.keyboard)
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: num2,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter 1st number",
                    prefixIcon: Icon(Icons.keyboard)
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: num3,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter 1st number",
                    prefixIcon: Icon(Icons.keyboard)
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
var a=double.parse(num1.text );
var b=double.parse(num2.text );
var c=double.parse(num3.text );
if (a>b)
    if (a>c) {print("$a is largest");}
    else {
      print("$c is Largest");
    }
else if (b>c){
  print("$b is largest");
}
else
  print("$c is largest");
                },
                child: Container(
                  child: Center(child: Text("Largest?")),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue
                  ),
                  height: 50,
                  width: 80,
                ),
              ),
              SizedBox(height: 170,),
              IconButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyApp()));
                },
                icon: Icon(Icons.home),
                iconSize: 40,
                color: Colors.blue,
              )
            ],
          ),
        )),
      ),
    );
  }
}
