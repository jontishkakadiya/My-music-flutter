import 'package:flutter/material.dart';
import 'package:my_music/widgets/Browse_Container.dart';
import 'package:my_music/widgets/gif_Container.dart';

class FindPage extends StatefulWidget {
  const FindPage({super.key});

  @override
  State<FindPage> createState() => _FindPageState();
}

class _FindPageState extends State<FindPage> {
  var containername = [
    'Podcasts',
    'Audiobooks',
    'Live Events',
    'Made For You',
    'New release',
    'Hip-Hop',
    'Pop',
    'Country',
    'Francophone',
    'Charts',
    'GLOW',
    'Rock',
    'Frequency',
    'Discover',
    'Radio',
    'Summer',
    'R&B',
    'Dance/Electronic',
    'Decades',
    'Mood',
    'Indie',
    'Workout',
    'Latin',
    'Disney',
    'K-pop',
    'Caribbean',
    'Chill',
    'sleep',
    'Party',
    'At Home',
    'Love',
    'Metal',
    'Jazz',
    'Trending',
    'In The Car',
    'Classical',
    'Folk & Acoustic',
    'Focus',
    'Soul',
    'Kids & Family',
    'Gaming',
    'Anime',
    'TV & Movies',
    'Instrumental',
    'Punk',
    'Ambient',
    'Blues',
    'Cooking & Dining',
    'Alternative',
    'Travel',
    'Afro',
    'Songwriter',
    'Nature & Nose',
    'Funk & Disco',
    'League of Legends',
    'Spotify Singles',
    'RADAR',
    'Fresh Finds',
    'Christian & Gospel',
    'Black History Is Now',
    'EQUAL',
    'South Asian Heritage Month',
    'Arab',
    'Punjabi',
    'Netflix',
    'Music + Talk',
    'Asian Pacific Islander Heritage Month',
    'Student',
    'Wellness',
    'Musica Mexicana',
    'Tastemakers',
    'Indian Classical',
    'Hindi',
    'Tamil',
    'Telugu',
    'Salsa',
    'Brazilian Funk',
    'Cumbia',
    'Canto-pop',
    'DanceHall/Zouk',
    'Flamenco',
    'J-Tracks',
    'Malay pop',
    'Mandopop',
    'Halloween',
    'Ramdan'
  ];

  var color = [
    Colors.orangeAccent.shade100,
    Colors.orangeAccent.shade200,
    Colors.orangeAccent.shade400,
    Colors.orangeAccent.shade700,
    Colors.orangeAccent,
    Colors.orange.shade200,
    Colors.orange.shade200,
    Colors.orange.shade200,
    Colors.orange.shade300,
    Colors.orange.shade400,
    Colors.orange.shade500,
    Colors.orange.shade600,
    Colors.orange.shade700,
    Colors.orange.shade800,
    Colors.orange.shade900,
    Colors.orange,
    Colors.pinkAccent,
    Colors.pinkAccent.shade100,
    Colors.pinkAccent.shade200,
    Colors.pinkAccent.shade400,
    Colors.pinkAccent.shade700,
    Colors.pink.shade200,
    Colors.pink.shade200,
    Colors.pink.shade200,
    Colors.pink.shade300,
    Colors.pink.shade400,
    Colors.pink.shade500,
    Colors.pink.shade600,
    Colors.pink.shade700,
    Colors.pink.shade800,
    Colors.pink.shade900,
    Colors.pink,
    Colors.purple.shade200,
    Colors.purple.shade200,
    Colors.purple.shade200,
    Colors.purple.shade300,
    Colors.purple.shade400,
    Colors.purple.shade500,
    Colors.purple.shade600,
    Colors.purple.shade700,
    Colors.purple.shade800,
    Colors.purple.shade900,
    Colors.purpleAccent,
    Colors.purpleAccent.shade100,
    Colors.purpleAccent.shade200,
    Colors.purpleAccent.shade400,
    Colors.purpleAccent.shade700,
    Colors.deepPurpleAccent,
    Colors.deepPurpleAccent.shade100,
    Colors.deepPurpleAccent.shade200,
    Colors.deepPurpleAccent.shade400,
    Colors.deepPurpleAccent.shade700,
    Colors.purple.shade200,
    Colors.purple.shade200,
    Colors.purple.shade200,
    Colors.purple.shade300,
    Colors.purple.shade400,
    Colors.purple.shade500,
    Colors.purple.shade600,
    Colors.purple.shade700,
    Colors.purple.shade800,
    Colors.purple.shade900,
    Colors.purple,
    Colors.lightGreen.shade300,
    Colors.lightGreen.shade300,
    Colors.lightGreen.shade300,
    Colors.lightGreen.shade300,
    Colors.lightGreen.shade400,
    Colors.lightGreen.shade500,
    Colors.lightGreen.shade600,
    Colors.lightGreen.shade700,
    Colors.lightGreen.shade800,
    Colors.lightGreen.shade900,
    Colors.lightGreen,
    Colors.greenAccent.shade200,
    Colors.greenAccent.shade200,
    Colors.greenAccent.shade400,
    Colors.greenAccent.shade700,
    Colors.greenAccent,
    Colors.green.shade200,
    Colors.green.shade300,
    Colors.green.shade400,
    Colors.green.shade500,
    Colors.green.shade600,
    Colors.green.shade700,
    Colors.green.shade800,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(.2),
      appBar: AppBar(
        title: const Text(
          'Search',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                IconData(0xef1e, fontFamily: 'MaterialIcons'),
                color: Colors.white,
                size: 25,
              ))
        ],
        centerTitle: false,
        backgroundColor: Colors.grey.withOpacity(.1),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: SearchBar(
              leading: Icon(
                IconData(0xe567, fontFamily: 'MaterialIcons'),
                size: 35,
              ),
              hintText: 'What do you want to listen to?',
            ),
          ),
          Flexible(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text(
                      'Explore your genres',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      //textAlign: TextAlign.left,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    width: double.infinity,
                    child: Wrap(
                      direction: Axis.horizontal,
                      alignment: WrapAlignment.spaceEvenly,
                      spacing: 10,
                      children: [
                        GifContainer(
                          gif:
                              "https://gifdb.com/images/high/dua-lipa-blowing-sweet-kisses-gm8wfbjmkjh9vzow.webp",
                          gifName: '#DuaLIpa',
                        ),
                        GifContainer(
                          gif:
                              'https://media3.giphy.com/media/XHTX8LKjIFvBKeIT8k/giphy.gif',
                          gifName: '#Anne Marie',
                        ),
                        GifContainer(
                            gif:
                                'https://media2.giphy.com/media/qjuCun2ApKSbVu8KiS/giphy.gif?cid=ecf05e47deo9occicj93r78p1ghtsgm7wywk3aibqbseawew&ep=v1_gifs_search&rid=giphy.gif&ct=g',
                            gifName: '#Taylor Swift'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text(
                      'Browse all',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      //textAlign: TextAlign.left,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      child: browseContainer(
                          namedata: containername, colors: color))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
