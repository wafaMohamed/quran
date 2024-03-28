import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:untitled4/core/core_widgets/custom_images/custom_image_asset.dart';
import 'package:untitled4/core/core_widgets/custom_images/custom_svg_picture.dart';
import 'package:untitled4/core/core_widgets/text_widget/custom_text.dart';
import 'package:untitled4/core/language/app_texts.dart';
import 'package:untitled4/disable/read.dart';

import '../../core/assets/app_assets/app_assets.dart';
import '../../core/core_widgets/custom_container_widget.dart';
import '../../core/core_widgets/vertical_spacing.dart';
import '../../core/styles/space_manager.dart';
import '../../core/styles/text_style.dart';
import '../../core/theme/app_color/app_color.dart';

class ListenQuranDisable extends StatefulWidget {
  const ListenQuranDisable({super.key});

  @override
  State<ListenQuranDisable> createState() => _ListenQuranDisable();
}

class _ListenQuranDisable extends State<ListenQuranDisable> {
  late FixedExtentScrollController controller;
  String sheikhMashari = 'الشيخ مشاري العفاسي';
  String sheikhAbdelsamd = 'الشيخ عبد الصمد ';
  FlutterTts flutterTts = FlutterTts();
  @override
  void initState() {
    controller = FixedExtentScrollController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Stack(
          children: [
            Image.asset(
              AppAssets.topViewQuranBooksAsset,
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            Positioned(
              bottom: 690,
              right: 70,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: CustomTextWidget(
                      text: AppTextArabic.welcomeInQuranApp,
                      style: TextStyles.interFont26W700White),
                ),
              ),
            ),
            //? listview widget
            ListWheelScrollView(
              // per higher => get hide
              //perspective: 0.009,
              // diameter => make it more visible
              diameterRatio: 1.5,
              controller: controller,
              itemExtent: 250,
              children: [
                GestureDetector(
                  onTap: () {
                    _speakWord(sheikhMashari);
                  },
                  onLongPress: () {
                    Get.to(ChooseSurah());
                  },
                  onDoubleTap: () {
                    final nextindex = controller.selectedItem + 1;
                    controller.animateToItem(nextindex,
                        duration: Duration(milliseconds: 250),
                        curve: Curves.ease);
                  },
                  child: CustomContainer(
                    borderRadius: 10.0,
                    width: 300,
                    backgroundColor: AppColor.gridGrayColor,
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CustomTextWidget(
                            text: 'الشيخ مشاري العفاسي',
                            style: TextStyles.interFont26W700White),
                        const VerticalSpacing(20),
                        const CustomImageAsset(
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                          path: AppAssets.mashari,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _speakWord(sheikhAbdelsamd);
                  },
                  onLongPress: () {
                    //Get.to(ListenQuranDisable());
                  },
                  onDoubleTap: () {
                    // if last item repeat the list from the beginning
                    final nextindex = controller.selectedItem + 1;

                    controller.animateToItem(nextindex,
                        duration: Duration(milliseconds: 250),
                        curve: Curves.ease);
                  },
                  child: CustomContainer(
                    borderRadius: 10.0,
                    width: 300,
                    backgroundColor: AppColor.gridGrayColor,
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CustomTextWidget(
                            text: 'الشيخ عبد الصمد',
                            style: TextStyles.interFont26W700White),
                        const VerticalSpacing(20),
                        const CustomImageAsset(
                          fit: BoxFit.cover,
                          width: 150,
                          height: 150,
                          path: AppAssets.spiritualLeaderAsset,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Positioned.directional(
              textDirection: TextDirection.rtl,
              bottom: 0,
              top: MediaQuery.of(context).size.height * 0.850,
              start: 0,
              end: 0,
              child: Center(
                child: Column(
                  children: [
                    SpaceManager.sizedBox12h(context),
                    const CustomSvgPicture(path: AppAssets.whiteIconAsset),
                    SpaceManager.sizedBox12h(context),
                    CustomTextWidget(
                        text: AppTextArabic.ayaInQuran,
                        style: TextStyles.interFont16W500White),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _speakWord(String word) async {
    flutterTts.setVolume(0.9);
    flutterTts.setSpeechRate(0.5);
    await flutterTts.setLanguage("ar-EG"); // Set the language to Arabic (Egypt)
    await flutterTts.speak(word);
  }
}

/////////////////////////////////////////////////

class ChooseSurah extends StatefulWidget {
  const ChooseSurah({super.key});

  @override
  State<ChooseSurah> createState() => _ChooseSurah();
}

class _ChooseSurah extends State<ChooseSurah> {
  late FixedExtentScrollController controller;
  String alaqSurah = 'سورة العلق';
  String surahElbaqara = 'سورة البقرة';

  FlutterTts flutterTts = FlutterTts();
  @override
  void initState() {
    controller = FixedExtentScrollController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Stack(
          children: [
            Image.asset(
              AppAssets.topViewQuranBooksAsset,
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            Positioned(
              bottom: 690,
              right: 70,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: CustomTextWidget(
                      text: AppTextArabic.welcomeInQuranApp,
                      style: TextStyles.interFont26W700White),
                ),
              ),
            ),
            //? listview widget
            ListWheelScrollView(
              // per higher => get hide
              //perspective: 0.009,
              // diameter => make it more visible
              diameterRatio: 1.5,
              controller: controller,
              itemExtent: 250,
              children: [
                GestureDetector(
                  onTap: () {
                    _speakWord(alaqSurah);
                  },
                  onLongPress: () {
                    Get.to(QuranReader());
                  },
                  onDoubleTap: () {
                    final nextindex = controller.selectedItem + 1;
                    controller.animateToItem(nextindex,
                        duration: Duration(milliseconds: 250),
                        curve: Curves.ease);
                  },
                  child: CustomContainer(
                    borderRadius: 10.0,
                    width: 300,
                    backgroundColor: AppColor.gridGrayColor,
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CustomTextWidget(
                            text: 'سورة العلق',
                            style: TextStyles.interFont26W700White),
                        const VerticalSpacing(20),
                        const CustomSvgPicture(
                          path: AppAssets.quranAsset,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    //_speakWord(surahElbaqara);
                  },
                  onLongPress: () {
                    // Get.to(ListenQuranDisable());
                  },
                  onDoubleTap: () {
                    // if last item repeat the list from the beginning
                    final nextindex = controller.selectedItem + 1;

                    controller.animateToItem(nextindex,
                        duration: Duration(milliseconds: 250),
                        curve: Curves.ease);
                  },
                  child: CustomContainer(
                    borderRadius: 10.0,
                    width: 300,
                    backgroundColor: AppColor.gridGrayColor,
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CustomTextWidget(
                            text: 'سورة البقرة',
                            style: TextStyles.interFont26W700White),
                        const VerticalSpacing(20),
                        const CustomSvgPicture(
                          path: AppAssets.quranAsset,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Positioned.directional(
              textDirection: TextDirection.rtl,
              bottom: 0,
              top: MediaQuery.of(context).size.height * 0.850,
              start: 0,
              end: 0,
              child: Center(
                child: Column(
                  children: [
                    SpaceManager.sizedBox12h(context),
                    const CustomSvgPicture(path: AppAssets.whiteIconAsset),
                    SpaceManager.sizedBox12h(context),
                    CustomTextWidget(
                        text: AppTextArabic.ayaInQuran,
                        style: TextStyles.interFont16W500White),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _speakWord(String word) async {
    flutterTts.setVolume(0.9);
    flutterTts.setSpeechRate(0.5);
    await flutterTts.setLanguage("ar-EG"); // Set the language to Arabic (Egypt)
    await flutterTts.speak(word);
  }
}

///
/*  primarySwatch: Colors.blue, // Set your preferred primary color
        accentColor: Colors.orange, // Set your preferred accent color
        brightness: Brightness.light, */
class QuranReader extends StatefulWidget {
  @override
  _QuranReaderState createState() => _QuranReaderState();
}

class _QuranReaderState extends State<QuranReader> {
  AudioPlayer _audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration _duration = Duration();
  Duration _position = Duration();
  double _volume = 1.0;
  bool _isMuted = false;
  String _surahDuration = '0:00';
  String _positionString = '0:00';

  @override
  void initState() {
    super.initState();

    _audioPlayer.onDurationChanged.listen((Duration duration) {
      setState(() {
        _duration = duration;
        _surahDuration = formatDuration(_duration);
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
                _surahDuration,
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
