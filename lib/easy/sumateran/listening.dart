import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class SumatranListeningPage extends StatefulWidget {
  final String courseTitle;

  SumatranListeningPage({super.key, required this.courseTitle});

  @override
  State<StatefulWidget> createState() => _ListeningPageState();
}

class _ListeningPageState extends State<SumatranListeningPage> {
  final FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          color: const Color(0xfff6f8fc),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(context),
              const SizedBox(height: 16),
              _buildTitle(),
              const SizedBox(height: 16),
              Expanded(child: _buildContent()),
              const SizedBox(height: 16),
              _buildPlayAudioButton(),
              const SizedBox(height: 8),
              _buildNextButton(),
            ],
          ),
        ),
      ),
    );
  }

  // Header Widget
  Widget _buildHeader(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back, size: 24, color: Colors.black),
          onPressed: () {
            Navigator.pushNamed(context, '/easy/sumateran/reading');
          },
        ),
        Text(
          widget.courseTitle,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'Inter-SemiBold',
          ),
        ),
      ],
    );
  }

  // Title Widget
  Widget _buildTitle() {
    return const Text(
      'Listening',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: 'Inter-SemiBold',
        color: Colors.black,
      ),
    );
  }

  // Content Widget
  Widget _buildContent() {
    return SingleChildScrollView(
      child: Text(
        _storyContent(),
        textAlign: TextAlign.justify,
        style: const TextStyle(
          fontSize: 16,
          fontFamily: 'Inter-Light',
          color: Colors.black,
        ),
      ),
    );
  }

  // Play Audio Button Widget
  Widget _buildPlayAudioButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: _speak,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff1c92ff),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        ),
        child: const Text(
          'Play Audio',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Inter-Bold',
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  // Next Button Widget
  Widget _buildNextButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/easy/sumateran/quiz');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff1c92ff),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        ),
        child: const Text(
          'Next',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Inter-Bold',
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  // Text-to-Speech Function
  Future<void> _speak() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(_storyContent());
  }

  // Story Content
  String _storyContent() {
    return 'Hundreds of years ago, in Sumatra, there was a small village situated on the bank of a fast-flowing river. On the opposite side of the river, within a dense forest, lived a hermit, or "tapa." He was an old man who had made his home in a rocky cave hidden beneath palm leaves. For many years, he lived off the fruits of the trees and the fields nearby, and he was friendly with all the animals of the forest, even the tigers.\n\n'
        'One year, a severe drought struck the region. The fruits withered on the trees, and the crops shriveled in the fields...'; // Full content here
  }
}
