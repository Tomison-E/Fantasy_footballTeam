import 'package:flutter/material.dart';
  class Player extends StatelessWidget {
  const Player({Key key, @required this.image, @required this.name, @required this.top, @required this.right, @required  this.left, @required this.position,}) :assert(top > 0.0), super(key: key);
  final String image;final String name;final String position;final double top;final double right;final double left;
  @override
  Widget build(BuildContext context) {final double _height = MediaQuery.of(context).size.height;double height = 0.18181818*(0.6773399*_height);
    return new Positioned(child: Container(child:Column(children:[Image.asset(image, height:position =='GK'? height-10.0:height), Container(decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(10.0)), height: 20.0, child: Padding(child:Text(name,style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),padding: EdgeInsets.only(left:5.0,right: 5.0)),),]), height: (height + 20.0),),top: top,right: right, left: left,);}}

