import 'package:flutter/material.dart';
import 'package:my_music/widgets/listtile.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(.2),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: const Text(
          'Setting',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.grey.withOpacity(.1),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              //color: Colors.pink,
              height: 70,
              child: ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: CircleAvatar(
                    maxRadius: 30,
                    child: Icon(Icons.person),
                  ),
                ),
                title: Text(
                  'User Name',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                subtitle: Text(
                  'View Profile',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
                trailing: Icon(
                  IconData(0xf579,
                      fontFamily: 'MaterialIcons', matchTextDirection: true),
                  color: Colors.white,
                ),
              ),
            ),
            const ListTiles(
              text: 'Account',
            ),
            const ListTiles(text: 'Data Saver'),
            const ListTiles(text: 'Languages'),
            const ListTiles(text: 'Playback'),
            const ListTiles(
              text: 'Explicit Content',
            ),
            const ListTiles(text: 'Devices'),
            const ListTiles(text: 'Car'),
            const ListTiles(text: 'Privacy & Social'),
            const ListTiles(
              text: 'Voice Assistance & Apps',
            ),
            const ListTiles(text: 'Audio Quality'),
            const ListTiles(text: 'Video Quality'),
            const ListTiles(text: 'Storage'),
            const ListTiles(
              text: 'Notifications',
            ),
            const ListTiles(text: 'Local Files'),
            const ListTiles(text: 'About'),
            ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Log out',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
