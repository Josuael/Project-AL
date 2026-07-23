import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class PasopatiListeningPage extends StatefulWidget {
  final String courseTitle; // Add this line to define the courseTitle field

  PasopatiListeningPage(
      {super.key, required this.courseTitle}); // Update the constructor

  @override
  State<StatefulWidget> createState() => _ListeningPage();
}

class _ListeningPage extends State<PasopatiListeningPage> {
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
        icon: const Icon(
          Icons.arrow_back, // Ikon default untuk tombol kembali
          size: 24,
          color: Colors.black, // Sesuaikan warna dengan tema aplikasi
        ),
        onPressed: () {
          Navigator.pushNamed(context,
              '/easy/pasopati/reading'); // Arahkan ke halaman Introduction
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
      bottom: 70,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'In ancient Java, during the era before Islam, there lived a mighty king named Jamojojo. He was a fierce warrior who fought many battles, always victorious with the help of a magical poniard given to him by a hermit. The hermit warned him to guard the weapon closely, for losing it would mean losing his power.\nOne night, after a successful battle, the King of the Giants, Jamojojo’s greatest enemy, stole the weapon while Jamojojo slept. The king was captured and imprisoned in the giant’s underground palace. Stripped of his magical weapon, Jamojojo felt helpless. However, during his captivity, he received dreams from an angel and the goddess Durga, who foretold that a new, more powerful weapon would come to him through a son yet to be born.\nAfter his release, Jamojojo returned to his kingdom and awaited the fulfillment of the prophecy. When his son was born, the child carried with him a golden kris, a weapon unlike any other. Pasopati, an old man who had previously prophesied about the new weapon, revealed that it was a gift from Allah. The kris was not meant for battle, but as a symbol of peace and submission to a greater divine will.\nThe king named the kris "Pasopati" in honor of the old man, and it became a revered symbol among the Javanese people. To this day, the kris is considered a sacred weapon, known not for its destructive power but for its connection to divine guidance.',
              textAlign: TextAlign.left,
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 18,
                color: const Color(0xff000000),
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
        'In ancient Java, during the era before Islam, there lived a mighty king named Jamojojo. He was a fierce warrior who fought many battles, always victorious with the help of a magical poniard given to him by a hermit. The hermit warned him to guard the weapon closely, for losing it would mean losing his power.\nOne night, after a successful battle, the King of the Giants, Jamojojo’s greatest enemy, stole the weapon while Jamojojo slept. The king was captured and imprisoned in the giant’s underground palace. Stripped of his magical weapon, Jamojojo felt helpless. However, during his captivity, he received dreams from an angel and the goddess Durga, who foretold that a new, more powerful weapon would come to him through a son yet to be born.\nAfter his release, Jamojojo returned to his kingdom and awaited the fulfillment of the prophecy. When his son was born, the child carried with him a golden kris, a weapon unlike any other. Pasopati, an old man who had previously prophesied about the new weapon, revealed that it was a gift from Allah. The kris was not meant for battle, but as a symbol of peace and submission to a greater divine will.\nThe king named the kris "Pasopati" in honor of the old man, and it became a revered symbol among the Javanese people. To this day, the kris is considered a sacred weapon, known not for its destructive power but for its connection to divine guidance.');
  }

  // Tombol Next
  Widget _buildNextButton() {
    return Positioned(
      left: 0,
      width: 341,
      bottom: 20,
      height: 45,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/easy/pasopati/quiz');
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
          backgroundColor: const Color(0xff1c92ff), // Updated property
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
        ),
      ),
    );
  }
}
