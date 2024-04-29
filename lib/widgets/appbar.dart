import 'package:flutter/material.dart';
import 'package:my_music/pages/recentlyplayed.dart';
import 'package:my_music/pages/settingpage.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String greeting;

  const MyAppBar({
    super.key,
    required this.greeting,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        greeting,
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const RecentlyPlayed()));
            },
            icon: const Icon(
              IconData(0xe03a, fontFamily: 'MaterialIcons'),
              color: Colors.white,
              size: 25,
            )),
        IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Setting()));
            },
            icon: const Icon(
              IconData(0xe57f, fontFamily: 'MaterialIcons'),
              color: Colors.white,
              size: 25,
            )),
      ],
      centerTitle: false,
      backgroundColor: Colors.transparent,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
