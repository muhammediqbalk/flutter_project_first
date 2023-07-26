import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget{
  final Color? bgColor;
  final Image? image;
  VoidCallback? onpress;
  Widget? label;

  MyWidget({this.bgColor,required this.label,this.image,required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgColor,
      child: ListTile(
        leading: image,
        trailing: label,
        onTap: onpress,
      ),
    );
  }


}