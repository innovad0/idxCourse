import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoTestPage extends StatefulWidget {
  @override
  _VideoTestPageState createState() => _VideoTestPageState();
}

class _VideoTestPageState extends State<VideoTestPage> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'DoSP9fQr2TY',
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
      ),
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3607712509.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1756523276.
body: ListView(
  children: [
    Center(
      child: YoutubePlayer(
        
        controller: _controller,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.red,
        progressColors: const ProgressBarColors(
          playedColor: Colors.red,
          handleColor: Colors.redAccent,
        ),
        onReady: () {
          // Perform any additional setup here
        },
      ),    
    ),
    const SizedBox(height: 20),
    

  ],
)

    );
  }
}