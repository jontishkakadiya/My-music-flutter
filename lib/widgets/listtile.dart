import 'package:flutter/material.dart';

class ListTiles extends StatelessWidget{
  final String text;


  const ListTiles({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text, style: const TextStyle(fontSize: 15,color: Colors.white),),
      trailing: const Icon(IconData(0xf579, fontFamily: 'MaterialIcons', matchTextDirection: true),color: Colors.white,),
    );
  }

}