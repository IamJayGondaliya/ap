import 'package:flutter/material.dart';
import 'package:list_audio_palyer/utils/image_list_util.dart';

class MyAudioPlayer extends StatefulWidget {
  const MyAudioPlayer({Key? key}) : super(key: key);

  @override
  State<MyAudioPlayer> createState() => _MyAudioPlayerState();
}

class _MyAudioPlayerState extends State<MyAudioPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Audio Player"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: myImages.length,
          itemBuilder: (context, i) => Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 60,
                foregroundImage: AssetImage(imagePath + myImages[i]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
