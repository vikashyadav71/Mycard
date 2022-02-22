

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
class make extends StatefulWidget {
  make(this.name,this.mob,this.mail);
  String name;
  String mob;
String mail;

  @override
  State<make> createState() => _makeState();
}

class _makeState extends State<make> {File ?img;
 Future<void> setpic() async {  try{
 final pic = await ImagePicker().pickImage(source: ImageSource.gallery);
 if(pic==null)return;
 final temp=File(pic.path);
 setState(() {
   this.img=temp;
 });

 }
 catch(e){print("$e");}}

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      Container(
    decoration: BoxDecoration(image:  DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkdvY4BbwwstqCVZr-3sQrjKehlBU5Gp_1yrj4-3DzwEzX9bCcEkLwUXkCRF_9puSOr_I&usqp=CAU"
    ),fit: BoxFit.fill))
    ,),
    Scaffold(backgroundColor: Colors.transparent,
    appBar: AppBar(backgroundColor: Colors.transparent,
    toolbarHeight: 90,
    title: Text('My.Card',
    style: TextStyle(fontWeight: FontWeight.w900,
    color: Colors.white10,
    fontSize: 32,
    fontStyle: FontStyle.italic),
    ),

    ),
      body: Center(
        child: Container(width: double.infinity,
          height: 500,
          decoration: BoxDecoration(
            color: Colors.white12
          ),
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.center,
             children:[img!=null?Image.file(img!,
             width: 200,

             height: 200,
             gaplessPlayback: true,):FlutterLogo(
               size: 200,
               style: FlutterLogoStyle.markOnly,
             ),
               TextButton(onPressed: (){ setState(() { setpic();

             }); }, child: Text("Add Pic"),),
               Text(" Name  :${widget.name}", style: TextStyle(fontSize: 32,
    backgroundColor: Colors.grey,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.italic,
               color: Colors.white
    ),),
               Text("MoB :${widget.mob}",
               style: TextStyle(fontSize: 32,
               fontWeight: FontWeight.w700,
               fontStyle: FontStyle.italic,
                 color: Colors.white,
                 backgroundColor: Colors.grey
               ),),
               Text("Mail :${widget.mail}",
                 style: TextStyle(fontSize: 32,
                     fontWeight: FontWeight.w700,
                     fontStyle: FontStyle.italic,
                     color: Colors.white,
                     backgroundColor: Colors.grey
                 ),)],
          ),
        ),
      ),

      ),
      ],
    );
}}
