import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Ruta1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String videoId = 'YOUR_VIDEO_ID'; // Reemplaza con el ID de tu video de YouTube

    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Título de la página'),
      ),
      body: Column(
        children: [
          Container(
            height: 200, // Ajusta la altura del reproductor de video según tus necesidades
            child: YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.blueAccent,
              progressColors: ProgressBarColors(
                playedColor: Colors.blue,
                handleColor: Colors.blueAccent,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Descripción del video',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}