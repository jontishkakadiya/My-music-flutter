import 'package:flutter/material.dart';
import 'package:my_music/pages/find_page.dart';
import 'package:my_music/pages/library_page.dart';
import 'package:my_music/pages/playlist_page.dart';
import 'package:my_music/pages/add_song_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const PlaylistPage(),
    const FindPage(),
    const LibraryPage(),
    const AddSongPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(.2),
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey.withOpacity(.2),
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded), label: 'Find'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.library_books_outlined,
              ),
              label: 'Library'),
          BottomNavigationBarItem(
              icon: Icon(IconData(0xe375, fontFamily: 'MaterialIcons')),
              label: 'Add Song')
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
