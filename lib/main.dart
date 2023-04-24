import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: "hhjj"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  AudioPlayer audioPlayer = AudioPlayer();

  void playmusic(int SoundNumber) {
    audioPlayer.play(AssetSource('images/note$SoundNumber.mp3'));
  }
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextButton(onPressed: (){
              playmusic(1);

            }, child: Text('Clicked me')),
            TextButton(onPressed: (){
              playmusic(2);

            }, child: Text('Clicked me')),
            TextButton(onPressed: ()async {
               await audioPlayer.pause(); 

            }, child: Text('pause me'))

          ],
        ),
      ),
    );
  }
}
