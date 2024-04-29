import 'package:flutter/material.dart';

class GifContainer extends StatelessWidget {
  final String gif;
  final String gifName;

  const GifContainer({super.key, required this.gif, required this.gifName});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.withOpacity(.2),
      ),
      height: 200,
      width: 108,
      child: Stack(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            gif,
            height: 200,
            width: 108,
            //alignment: Alignment.center,
            fit: BoxFit.cover,
            //animation: "idle",
          ),
        ),
        Positioned(
          left: 3,
          bottom: 5,
          child: Text(
            gifName,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ]),
    );
  }
}
