import 'package:flutter/material.dart';
import 'package:flutter_numbergamez/main.dart';

class Evenorodd extends StatelessWidget {
  TextEditingController num=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Check Even or Odd")),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(50),
            child: Column(
              children: [
                SizedBox(height: 60,),
                TextField(
                  controller: num,
                  decoration: InputDecoration(
                    hintText: "Enter a number",
                    prefixIcon: Icon(Icons.keyboard),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                GestureDetector(
                  onTap: (){
                    var a=int.parse(num.text );
                    if (a%2==0)
                      print("$a is even");
                    else
                      print("$a is odd");

                  },
                  child: Container(
                    child: Center(child: Text("Even or odd?")),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue
                    ),
                    height: 50,
                    width: 100,
                  ),
                ),
                SizedBox(height: 200,),
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
          ),
        ),
      ),
    );
  }
}
