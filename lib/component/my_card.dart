import 'package:flutter/material.dart';
import 'package:flutter_app/const/const.dart';


class MyCard extends StatelessWidget {

  Widget child;
  Color color;
  MyCard({required this.child,this.color=kContainerColor });

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color:color,

          borderRadius: BorderRadius.circular(20.0)),

      child: child,




    );
  }
}
