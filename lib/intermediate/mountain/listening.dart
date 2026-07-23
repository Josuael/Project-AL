import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class MountainListeningPage extends StatefulWidget {
  final String courseTitle; // Add this line to define the courseTitle field

  MountainListeningPage(
      {super.key, required this.courseTitle}); // Update the constructor

  @override
  State<StatefulWidget> createState() => _ListeningPage();
}

class _ListeningPage extends State<MountainListeningPage> {
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
              '/intermediate/mountain/reading'); // Arahkan ke halaman Introduction
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
              'Once upon a time, there was a powerful giant who ruled over Smeru, Indra’s holy mountain. This giant had a beautiful daughter, Dewi Jurangga, whom he loved dearly. He kept her hidden from the world, guarding her day and night.\n\n'
              'One morning, driven by curiosity, Dewi Jurangga left her father’s underground realm to see the outside world. At first, the bright sunlight blinded her, but soon she adjusted and marveled at the beauty of the earth. As she wandered, she encountered a young giant, the raksasa, who was the guardian of the gods\' temple.\n\n'
              'The raksasa introduced himself as the son of Bromo, another powerful giant. He was searching for a wife, and upon seeing Dewi Jurangga, he declared that she was the one he had been looking for. Though Dewi Jurangga was enchanted by the raksasa, she warned him that her father would never allow their union because of the enmity between her father and Bromo.\n\n'
              'Determined, the raksasa approached her father and requested her hand in marriage. Her father roared in anger but eventually set an impossible condition. The raksasa must create a sea of sand around Mount Bromo in one night, wide and deep enough to stop the lava and fire from reaching Smeru. If he succeeded, he could marry Dewi Jurangga. If not, he would be turned to stone for a thousand times a thousand years. \n\n'
              'The raksasa accepted the challenge. With a coconut shell as his tool, he worked tirelessly throughout the night, creating hills and mounds of sand. As dawn approached, he was nearly finished, with just a small section left to complete.\n\n'
              'The mountain giant, seeing that the raksasa might succeed, resorted to trickery. He imitated the crowing of a cock, signaling the start of a new day. The village cocks responded, and the raksasa, believing he had failed, threw down the coconut shell in despair. The shell became a mountain, now called Batok.\n\n'
              'Heartbroken, Dewi Jurangga turned to stone, becoming Mount Kembang. The raksasa also turned to stone, becoming Mount Segarawedi. The mountain giant, consumed by guilt and fear of divine punishment, hid deep within Mount Smeru. To this day, he sighs and moans, releasing clouds of smoke that rise from the mountain.\n\n'
              'And so, the legend says, the raksasa and Dewi Jurangga remain as mountains, waiting for a thousand times a thousand years to pass so they may return to their human forms.\n\n',
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
        'Once upon a time, there was a powerful giant who ruled over Smeru, Indra’s holy mountain. This giant had a beautiful daughter, Dewi Jurangga, whom he loved dearly. He kept her hidden from the world, guarding her day and night.\n\n'
        'One morning, driven by curiosity, Dewi Jurangga left her father’s underground realm to see the outside world. At first, the bright sunlight blinded her, but soon she adjusted and marveled at the beauty of the earth. As she wandered, she encountered a young giant, the raksasa, who was the guardian of the gods\' temple.\n\n'
        'The raksasa introduced himself as the son of Bromo, another powerful giant. He was searching for a wife, and upon seeing Dewi Jurangga, he declared that she was the one he had been looking for. Though Dewi Jurangga was enchanted by the raksasa, she warned him that her father would never allow their union because of the enmity between her father and Bromo.\n\n'
        'Determined, the raksasa approached her father and requested her hand in marriage. Her father roared in anger but eventually set an impossible condition. The raksasa must create a sea of sand around Mount Bromo in one night, wide and deep enough to stop the lava and fire from reaching Smeru. If he succeeded, he could marry Dewi Jurangga. If not, he would be turned to stone for a thousand times a thousand years. \n\n'
        'The raksasa accepted the challenge. With a coconut shell as his tool, he worked tirelessly throughout the night, creating hills and mounds of sand. As dawn approached, he was nearly finished, with just a small section left to complete.\n\n'
        'The mountain giant, seeing that the raksasa might succeed, resorted to trickery. He imitated the crowing of a cock, signaling the start of a new day. The village cocks responded, and the raksasa, believing he had failed, threw down the coconut shell in despair. The shell became a mountain, now called Batok.\n\n'
        'Heartbroken, Dewi Jurangga turned to stone, becoming Mount Kembang. The raksasa also turned to stone, becoming Mount Segarawedi. The mountain giant, consumed by guilt and fear of divine punishment, hid deep within Mount Smeru. To this day, he sighs and moans, releasing clouds of smoke that rise from the mountain.\n\n'
        'And so, the legend says, the raksasa and Dewi Jurangga remain as mountains, waiting for a thousand times a thousand years to pass so they may return to their human forms.\n\n');
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
          Navigator.pushNamed(context, '/intermediate/mountain/quiz');
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
