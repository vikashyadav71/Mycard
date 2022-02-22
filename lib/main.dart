import 'dart:ui';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'make.dart';
void main() {
  runApp(const MaterialApp(
    home:MyApp(),
  debugShowCheckedModeBanner: false,));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late String name="Bot";
  late String mob="1234";

late String mail="dumy@gmail.com";
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.green;
    }
    return Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
    children: [Container(decoration: BoxDecoration(image:  DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEZTOmSUmrLjriA2Pbwzc9j_R36RGUdza3XQ&usqp=CAU"
    ),fit: BoxFit.fill))
      ,),
      Scaffold(backgroundColor: Colors.transparent,
        appBar: AppBar(backgroundColor: Colors.transparent,
        toolbarHeight: 90,
        title: Text('My.Card',
        style: TextStyle(fontWeight: FontWeight.w800,
        color: Colors.black26,
        fontSize: 52,
        fontStyle: FontStyle.italic),
        ),

        ),
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(

            decoration: const InputDecoration(

              border: UnderlineInputBorder(),


              labelText: " Name  ",
              hintText: "Enter your name",
              labelStyle: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 34,
                  fontWeight: FontWeight.bold
              ),


            ),
            keyboardType: TextInputType.name,

            onChanged: ( val){
name=val;
            },
            style: TextStyle(
              color: Colors.blueAccent,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              decorationColor: Colors.red,
              fontSize: 26,


            ),


          ),
          TextFormField(

            decoration: const InputDecoration(

              border: UnderlineInputBorder(),


              labelText: " Mail  ",
              hintText: "Enter your name",
              labelStyle: TextStyle(
                  color: Colors.lightGreen,
                  fontSize: 34,
                  fontWeight: FontWeight.bold
              ),


            ),
            keyboardType: TextInputType.name,

            onChanged: ( val){
              mail=val;
            },
            style: TextStyle(
              color: Colors.blueAccent,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              decorationColor: Colors.red,
              fontSize: 26,


            ),


          ),
          TextField(
            onChanged: (val){
              mob=val;

            },
            decoration: const InputDecoration(
            labelText: "Mobile",
                hintText: "Enter Number",

                labelStyle: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,


          ),

          ),
            keyboardType: TextInputType.phone,
            style: TextStyle(
              color: Colors.blueAccent,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              decorationColor: Colors.red,
              fontSize: 26,

            ),
          ),
          SizedBox(height: 20,width: 100,),
          TextButton(onPressed: (){   Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  make(name,mob,mail)),
          );}, child: Text("GetCard",style: TextStyle(
            fontSize: 30,
            color: Colors.lightGreen
          ),),
            style: ButtonStyle(foregroundColor:  MaterialStateProperty.resolveWith(getColor),
            ),
          )


        ],

      ),

      ),),

    ],
    );
  }}