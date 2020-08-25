import 'package:flutter/material.dart';
import 'package:flutter_numbergamez/main.dart';

class Smallest extends StatelessWidget {
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
  TextEditingController num3=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Find the Smallest")),
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
                  if (a<b)
                    if (a<c) {print("$a is smallest");}
                    else {
                      print("$c is smallest");
                    }
                  else if (b<c){
                    print("$b is smallest");
                  }
                  else
                    print("$c is smallest");
                },
                child: Container(
                  child: Center(child: Text("Smallest?")),
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
