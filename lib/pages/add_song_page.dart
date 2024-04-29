import 'package:flutter/material.dart';

class AddSongPage extends StatelessWidget {
  const AddSongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(.2),
      appBar: AppBar(
        title: const Text(
          'Your Library',
          style:
          TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions:  [IconButton(onPressed: (){}, icon: const Icon(IconData(0xe04f, fontFamily: 'MaterialIcons'),color: Colors.white,))],
        centerTitle: false,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
