import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled4/core/assets/app_assets/app_assets.dart';

/*  primarySwatch: Colors.blue, // Set your preferred primary color
        accentColor: Colors.orange, // Set your preferred accent color
        brightness: Brightness.light, */
class AudioScreen extends StatefulWidget {
  @override
  _AudioScreenState createState() => _AudioScreenState();
}

class _AudioScreenState extends State<AudioScreen> {
  AudioPlayer _audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration _duration = Duration();
  Duration _position = Duration();
  double _volume = 1.0;
  bool _isMuted = false;
  String _songDuration = '0:00';
  String _positionString = '0:00';

  @override
  void initState() {
    super.initState();

    _audioPlayer.onDurationChanged.listen((Duration duration) {
      setState(() {
        _duration = duration;
        _songDuration = formatDuration(_duration);
      });
    });

    _audioPlayer.onPositionChanged.listen((Duration position) {
      setState(() {
        _position = position;
        _positionString = formatDuration(_position);
      });
    });
  }

  String formatDuration(Duration duration) {
    String minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
    String seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  void playPause() {
    if (isPlaying) {
      _audioPlayer.pause();
    } else {
      _audioPlayer
          .play(AssetSource(AppAssets.audio)); // Replace with your audio file
    }

    setState(() {
      isPlaying = !isPlaying;
    });
  }

  void seekToSecond(int second) {
    Duration newDuration = Duration(seconds: second);
    _audioPlayer.seek(newDuration);
  }

  void setVolume(double value) {
    _audioPlayer.setVolume(value);
    setState(() {
      _volume = value;
      _isMuted = value == 0.0;
    });
  }

  void muteUnmute() {
    if (_isMuted) {
      setVolume(1.0);
    } else {
      setVolume(0.0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Custom Song Screen'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 25,
              ),
              LottieBuilder.asset(
                'assets/lottie/Animation1.json',
                width: 50,
                height: 50,
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.5),
                ),
                padding: EdgeInsets.all(16.0),
                child: Icon(
                  isPlaying ? Icons.pause : Icons.play_arrow,
                  size: 100.0,
                  color: Colors.blue, // Set your preferred icon color
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                _positionString,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Slider(
                value: _position.inSeconds.toDouble(),
                min: 0.0,
                max: _duration.inSeconds.toDouble(),
                onChanged: (double value) {
                  seekToSecond(value.toInt());
                },
                activeColor: Colors.orange, // Set your preferred slider color
              ),
              Text(
                _songDuration,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: _isMuted
                        ? Icon(Icons.volume_off)
                        : Icon(Icons.volume_up),
                    onPressed: muteUnmute,
                    color: Colors.black, // Set your preferred icon color
                  ),
                  Slider(
                    value: _volume,
                    min: 0.0,
                    max: 1.0,
                    onChanged: setVolume,
                    activeColor:
                        Colors.orange, // Set your preferred slider color
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: playPause,
                child: Text(
                  isPlaying ? 'Pause' : 'Play',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.orange, // Set your preferred button color
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }
}
