import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

/* 
mina magdy
Certifications:

Certified Ethical Hacker (CEH)

CompTIA A+

Certified Information Systems Security Professional (CISSP)



Programming Languages:

Python

C++

Html

Bash

PHP



Technical Skills:

Penetration testing and ethical hacking

Web application security

Network security

Cryptography

Database security



Soft Skills:

Strong communication and interpersonal skills

Ability to work independently and in a team environment

Adaptable and quick learner

Organized and detail-oriented


 */
class ChatBotQuran extends StatefulWidget {
  const ChatBotQuran({super.key});

  @override
  ChatBotQuranState createState() => ChatBotQuranState();
}

class ChatBotQuranState extends State<ChatBotQuran> {
  final TextEditingController _messageController = TextEditingController();
  List<String> _suggestionsList = [];
  Key _suggestionsKey = UniqueKey();
  int _currentSuggestionIndex = 0;
  /*  List<String> newSuggestions = [
    "اقْرَأْ بِاسْمِ رَبِّكَ الَّذِي خَلَقَ "
        "خلق الإِنسَانَ مِنْ عَلَقٍ\n"
        "The Surah begins with the divine command to Read in the name of your Lord who created."
        "This emphasizes the significance of acquiring knowledge and enlightenment."
        "It then describes the creation of humankind from a clot, highlighting God's supreme creative power",
    "اقْرَأْ وَرَبُّكَ الأَكْرَمُ "
        "الَّذِي عَلَّمَ بِالْقَلَمِ\n"
        "These verses emphasize the generosity of God, the Most Gracious,"
        "and the role of God as the ultimate teacher who imparts knowledge using the pen.",
    "عَلَّمَ الإِنسَانَ مَا لَمْ يَعْلَمْ\n"
        "The Surah underscores that God has taught humans what they did not know"
        " illustrating the contrast between human ignorance and divine knowledge."
  ]; */
  /*  List<String> newSuggestions2 = [
    "اقْرَأْ وَرَبُّكَ الأَكْرَمُ "
        "الَّذِي عَلَّمَ بِالْقَلَمِ\n"
        "These verses emphasize the generosity of God, the Most Gracious,"
        "and the role of God as the ultimate teacher who imparts knowledge using the pen."
  ]; */
  List<String> newSuggestions = [
    "my professor Francis😙",
    "you know my friend that Professor Francis one of the influencers in teaching english",
    "his audience reached to more than 100,000 student from all over the world",
    "and i was one of them😁",
    "let me tell you about him and his channel Last Minute English",
    "His Name is Francis, he is from the UK, and he is the founder of Last Minute English."
        "Last Minute English creates online video courses to help students improve their spoken and written English,"
        "with a particular focus on English exams like the IELTS, TOEIC, and Duolingo."
        "he also help us to reach advanced level English with specialist courses on Grammar, Vocabulary, Fluency and more."
        "he is a qualified IELTS Examiner. he previously lived in China (9 years) and Colombia (2 years),"
        " and now live in Manchester, UK. his experience and his passion is helping students to get high scores in their IELTS exam."
        " he believe that understanding is the key to success in the IELTS exam, so his IELTS courses teach:",
    "1) HOW the IELTS examiner decides your score"
        "2) WHAT you can do to meet the IELTS examiner's requirements",
    "he is also a keen language learner, and have achieved fluency in Mandarin Chinese and Spanish.",
    "that's a little brief about one of the most partners that students will benefit from him",
    "we need to hurry Shehab i'm willing to see Professor Francis again🤩"
  ];

  void _addLocalMessage() {
    String message = _messageController.text;
    if (message.isNotEmpty) {
      _updateSuggestions(message);
      _messageController.clear();
    }
  }

  void _updateSuggestions(String message) {
    if (message.toLowerCase().contains('explain surah alak')) {
      newSuggestions;
    } else if (message.contains('explain surah alaq')) {
      newSuggestions;
    } else if (message.contains('explain surah elalaq')) {
      newSuggestions;
    } else if (message.contains('explain elalaq')) {
      newSuggestions;
    } else if (message.contains('explain alaq')) {
      newSuggestions;
    } else if (message
        .toLowerCase()
        .contains('have no fear, francis is here')) {
    } else {
      newSuggestions = ['Sorry, I didn\'t understand that.'];
    }

    setState(() {
      _suggestionsKey = UniqueKey();
      _suggestionsList = newSuggestions;
      _currentSuggestionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('NEXUS CHAT'),
          centerTitle: true,
          leading: Text(''),
          actions: [
            IconButton(
                onPressed: () {
                  Get.changeTheme(ThemeData.dark());
                  setState(() {});
                },
                icon: Icon(Icons.nightlight)),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // message 1
            // bot 2
            // ai 1
            LottieBuilder.asset('assets/lottie/Animation3.json',
                width: 150, height: 150),
            Expanded(
              child: _suggestionsList.isNotEmpty
                  ? Column(
                      key: _suggestionsKey,
                      children: [
                        AnimatedTextKit(
                          isRepeatingAnimation: false,
                          key: UniqueKey(), // Use a new key for re-rendering
                          animatedTexts: [
                            TyperAnimatedText(
                              _suggestionsList[_currentSuggestionIndex],
                              textStyle: TextStyle(color: Colors.white),
                              speed: const Duration(milliseconds: 100),
                            ),
                            /* TyperAnimatedText(
                              _suggestionsList[1],
                              textStyle: TextStyle(color: Colors.white),
                              speed: const Duration(milliseconds: 50),
                            ),
                            TyperAnimatedText(
                              _suggestionsList[2],
                              textStyle: TextStyle(color: Colors.white),
                              speed: const Duration(milliseconds: 50),
                            ),
                            TyperAnimatedText(
                              _suggestionsList[3],
                              textStyle: TextStyle(color: Colors.white),
                              speed: const Duration(milliseconds: 50),
                            ), */
                          ],
                          onFinished: () {
                            // Increment the index when the typing animation finishes
                            setState(
                              () {
                                _currentSuggestionIndex++;
                                if (_currentSuggestionIndex >=
                                    _suggestionsList.length) {
                                  // Reset index if all suggestions have been shown
                                  _currentSuggestionIndex = 0;
                                  // TyperAnimatedText('what a fuck i have to go');
                                }
                              },
                            );
                          },
                        ),
                      ],
                    )
                  : const SizedBox(),
            ),
            TextField(
              controller: _messageController,
              decoration: const InputDecoration(
                hintText: 'Type a message...',
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _addLocalMessage,
              child: const Text('Send Message'),
            ),
          ],
        ),
      ),
    );
  }
}
