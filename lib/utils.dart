import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

const kPrimaryColor = Color(0xFFebbe8b);

// playlist songs
List<Audio> songs = [
  Audio('assets/nf_Let_You_Down.mp3',
      metas: Metas(
          title: 'Let You Down',
          artist: 'NF',
          image: const MetasImage.asset(
              'assets/nf.jpeg'))),
  Audio('assets/lil_nas_x_industry_baby.mp3',
      metas: Metas(
          title: 'Industry Baby',
          artist: 'Lil Nas X',
          image: const MetasImage.asset('assets/Lil Nas X.jpeg'))),
  Audio('assets/Beautiful.mp3',
      metas: Metas(
          title: 'Beautiful',
          artist: 'Eminem',
          image: const MetasImage.asset('assets/Eminem.jpeg'))),
  Audio('assets/adipurush_song.mp3',
      metas: Metas(
          title: 'Ram Siya Ram',
          artist: 'Sachet, Parampara',
          image: const MetasImage.asset('assets/Adipurush First Look.jpeg'))),
  Audio('assets/New-Rules---Dua-Lipa.mp3',
      metas: Metas(
          title: 'New Rules',
          artist: 'Dua Lipa',
          image: const MetasImage.asset('assets/Dualipa _Newrules.jpeg'))),
  Audio('assets/Dua_Lipa_Levitating.mp3',
      metas: Metas(
          title: 'Levitating',
          artist: 'Dua Lipa',
          image: const MetasImage.asset('assets/DuaLipa_Livetating.jpeg'))),
  Audio('assets/One-Kiss.mp3',
      metas: Metas(
          title: 'One Kiss',
          artist: 'Dua Lipa',
          image: const MetasImage.asset('assets/One_Kiss_Dualipa.jpeg'))),
  Audio('assets/No-Lie.mp3',
      metas: Metas(
          title: 'No Lie',
          artist: 'Dua Lipa',
          image: const MetasImage.asset('assets/dualipa .jpeg'))),
  Audio('assets/Friends.mp3',
      metas: Metas(
          title: 'Friends',
          artist: 'Anne Marie',
          image: const MetasImage.asset('assets/annemarie.jpeg'))),
  Audio('assets/taylor-swift-you-belong-with-me.mp3',
    metas: Metas(
        title: 'Peace',
        artist: 'Taylor Swift',
        image: const MetasImage.asset('assets/Taylor Swift Eras Tour.jpeg'))),
];

String durationFormat(Duration duration) {
  String twoDigits(int n) => n.toString().padLeft(2, '0');
  String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
  String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
  return '$twoDigitMinutes:$twoDigitSeconds';
  // for example => 03:09
}

// get song cover image colors
Future<PaletteGenerator> getImageColors(AssetsAudioPlayer player) async {
  var paletteGenerator = await PaletteGenerator.fromImageProvider(
    AssetImage(player.getCurrentAudioImage?.path ?? ''),
  );
  return paletteGenerator;
}

String getGreeting() {
  final hour = DateTime.now().hour;
  String greeting = '';

  if (hour >= 0 && hour < 12) {
    greeting = 'Good morning';
  } else if (hour >= 12 && hour < 17) {
    greeting = 'Good afternoon';
  } else {
    greeting = 'Good evening';
  }
  return greeting;
}