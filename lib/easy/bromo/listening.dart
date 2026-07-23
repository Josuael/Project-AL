import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class BromoListeningPage extends StatefulWidget {
  final String courseTitle;

  BromoListeningPage({super.key, required this.courseTitle});

  @override
  State<StatefulWidget> createState() => _ListeningPage();
}

class _ListeningPage extends State<BromoListeningPage> {
  final FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Container(
          width: 393,
          height: 852,
          decoration: BoxDecoration(
            color: const Color(0xfff6f8fc),
          ),
          child: Stack(
            children: [
              _buildHeader(context),
              _buildTitle(),
              _buildContent(),
              _buildNextButton(),
              _buildPlayAudioButton(),
            ],
          ),
        ),
      ),
    );
  }

  // Header
  Widget _buildHeader(BuildContext context) {
    return Positioned(
      left: 19,
      top: 32,
      child: IconButton(
        icon: const Icon(Icons.arrow_back, size: 24, color: Colors.black),
        onPressed: () {
          Navigator.pushNamed(context, '/easy/bromo/reading');
        },
      ),
    );
  }

  // Judul
  Widget _buildTitle() {
    return Positioned(
      left: 29,
      width: 148,
      top: 114,
      height: 17,
      child: Text(
        'Listening',
        textAlign: TextAlign.left,
        style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: 20,
          color: const Color(0xff000000),
          fontFamily: 'Inter-SemiBold',
          fontWeight: FontWeight.normal,
        ),
        maxLines: 9999,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  // Konten
  Widget _buildContent() {
    return Positioned(
      left: 24,
      width: 345,
      top: 161,
      bottom: 120, // Adjusted for audio button
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'In the Tengger Mountains of Java, many years ago, there lived an elderly couple, Kyai Kesunia and Nyai Kesuma. Despite being devout Hindus who prayed to Brahma for years, they remained childless. '
              'One night, an old man knocked on their door, asking for food and shelter. Kyai and Nyai welcomed him kindly, and after he ate and rested, he revealed himself as a messenger from Brahma.\n\n'
              'The messenger told them that their prayers had been heard and that they would have a son. However, when the boy grew up, Brahma would require something of them. True to the promise, a son was born, and the couple was overjoyed.\n\n'
              'Years passed, and the son grew into a strong and handsome young man. One night, the messenger returned with a solemn request: Brahma required them to take their son to the top of Mount Bromo and offer him as a sacrifice. Though heartbroken, the couple agreed, and the next night they made the long journey to the crater\'s edge.\n\n'
              'As they prayed and prepared to offer their son, Brahma’s voice boomed from the heavens. Brahma did not take their son, but instead praised their devotion, saying he had only tested them. The family was allowed to return home, with their son remaining as their support in their old age.\n\n'
              'To honor Brahma, Kyai, Nyai, and their son returned to Mount Bromo with the finest goat and grains from their land. They offered these to Brahma in gratitude, and since that day, the people of the Tengger Mountains continue to honor this tradition with the annual Bromo Feast, offering their finest gifts to Brahma.\n\n'
              'The Bromo Feast remains a sacred celebration, a symbol of devotion, gratitude, and faith, passed down from generation to generation.',
              textAlign: TextAlign.left,
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 18,
                color: Color(0xff000000),
                fontFamily: 'Inter-Light',
                fontWeight: FontWeight.normal,
              ),
              maxLines: null,
            ),
          ],
        ),
      ),
    );
  }

  // Tombol Play Audio
  Widget _buildPlayAudioButton() {
    return Positioned(
      left: 24,
      width: 345,
      bottom: 80,
      child: ElevatedButton(
        onPressed: () => _speak(),
        child: Text(
          'Play Audio',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontFamily: 'Inter-Bold',
            fontWeight: FontWeight.normal,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff1c92ff),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
        ),
      ),
    );
  }

  // Fungsi untuk Text-to-Speech
  Future<void> _speak() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        'In the Tengger Mountains of Java, many years ago, there lived an elderly couple, Kyai Kesunia and Nyai Kesuma. Despite being devout Hindus who prayed to Brahma for years, they remained childless. '
        'One night, an old man knocked on their door, asking for food and shelter. Kyai and Nyai welcomed him kindly, and after he ate and rested, he revealed himself as a messenger from Brahma.'
        'The messenger told them that their prayers had been heard and that they would have a son. However, when the boy grew up, Brahma would require something of them. True to the promise, a son was born, and the couple was overjoyed.'
        'Years passed, and the son grew into a strong and handsome young man. One night, the messenger returned with a solemn request: Brahma required them to take their son to the top of Mount Bromo and offer him as a sacrifice. Though heartbroken, the couple agreed, and the next night they made the long journey to the crater\'s edge.'
        'As they prayed and prepared to offer their son, Brahma’s voice boomed from the heavens. Brahma did not take their son, but instead praised their devotion, saying he had only tested them. The family was allowed to return home, with their son remaining as their support in their old age.'
        'To honor Brahma, Kyai, Nyai, and their son returned to Mount Bromo with the finest goat and grains from their land. They offered these to Brahma in gratitude, and since that day, the people of the Tengger Mountains continue to honor this tradition with the annual Bromo Feast, offering their finest gifts to Brahma.'
        'The Bromo Feast remains a sacred celebration, a symbol of devotion, gratitude, and faith, passed down from generation to generation.');
  }

  // Tombol Next
  Widget _buildNextButton() {
    return Positioned(
      left: 24,
      width: 345,
      bottom: 20,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/easy/bromo/quiz');
        },
        child: Text(
          'Next',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontFamily: 'Inter-Bold',
            fontWeight: FontWeight.normal,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff1c92ff),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
        ),
      ),
    );
  }
}
