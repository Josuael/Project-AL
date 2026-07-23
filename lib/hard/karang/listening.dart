import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class KarangListeningPage extends StatefulWidget {
  final String courseTitle; // Add this line to define the courseTitle field

  KarangListeningPage(
      {super.key, required this.courseTitle}); // Update the constructor

  @override
  State<StatefulWidget> createState() => _ListeningPage();
}

class _ListeningPage extends State<KarangListeningPage> {
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
              '/hard/karang/reading'); // Arahkan ke halaman Introduction
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
              'Hanomat, the king of monkeys and son of the great wind-god, often wandered the earth in the form of an orangutan. One day, he visited his people, the monkeys, carrying two large bags of sand on his shoulders. His plan was to have the monkeys help him build two small islands in the Sunda Straits. However, upon arriving, he discovered that three islands—Krakatau, Besi, and Dwars-in-den-weg—had already been created by another god.\n\n'
              'Angry at this unexpected development, Hanomat tore open his bags, and the sand spilled out in great waves. These waves of sand piled up, forming two large mountains. One he named Karang, and the other Pulosari.\n\n'
              'While Pulosari remained an ordinary mountain, Karang grew taller and taller, its peak reaching into the heavens. The monkeys, thrilled by their king’s creation, believed the high mountain would allow them to climb to the stars. Soon, they swarmed to the top and began teasing the stars. Eventually, their mischief turned to biting, and they started nibbling at the small stars.\n\n'
              'The gods in heaven watched this with concern. One evening, Vishnu said to Brahma, "Look, O Creator, how the monkeys are teasing the stars. Shouldn\'t we punish them?"\n\n'
              'Brahma, kind-hearted as always, replied, "Let them be. They will tire of their teasing soon enough."\n\n'
              'But the teasing continued, and one night, a large monkey snapped at the evening star, causing it to shrink in fear behind a cloud. Vishnu pleaded with Brahma again, but Brahma, ever patient, suggested they wait until morning.\n\n'
              'The following morning, however, things escalated. The monkeys began biting the morning star, which shone brightly in the heavens. Terrified and unable to hide, the star called out to Brahma, "Great Brahma, if this teasing doesn\'t stop, I will no longer shine, and neither will any of the other stars!"\n\n'
              'The other stars joined in, pleading with Brahma to put an end to the mischief.\n\n'
              'Finally, Brahma summoned Lurah Dalam, the ruler of Bantam, and ordered him to bring Hanomat to heaven immediately.\n\n'
              'When Lurah Dalam found Hanomat, he delivered Brahma’s message. Hanomat, puzzled, asked, "What does Brahma want with me?"\n\n'
              'Lurah Dalam explained, "Brahma wishes for you to cut off part of your mountain so that the monkeys can no longer reach the stars."\n\n'
              'Outraged, Hanomat protested, "Cut off a piece of my beautiful mountain? Where will the piece go?"\n\n'
              'Lurah Dalam replied, "I believe it will fall into the sea."\n\n'
              'Hanomat stubbornly refused, "If Brahma wants to cut a mountain, he can use the three islands already in the Sunda Straits!"\n\n'
              'Enraged by Hanomat\'s insolence, Lurah Dalam commanded, "You dare defy Brahma? Go to heaven at once and retrieve the scissors, or I will banish you to the realm of ghosts!"\n\n'
              'Realizing he had no choice, Hanomat went to the gods’ heaven. Brahma handed him a pair of great scissors and instructed him to snip off a third of the Karang mountain to prevent the monkeys from climbing to the stars.\n\n'
              'Reluctantly, Hanomat returned to earth. Climbing to the top of Karang, he snipped off a third of the mountain. With a thunderous crash, the severed piece fell to the ground, and by Brahma’s will, it formed a group of smaller volcanoes.\n\n'
              'And so, it was decreed that the souls of wicked Baduwis would be sent to these volcanoes instead of the holy White Place, forever paying for their misdeeds.',
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
        'Hanomat, the king of monkeys and son of the great wind-god, often wandered the earth in the form of an orangutan. One day, he visited his people, the monkeys, carrying two large bags of sand on his shoulders. His plan was to have the monkeys help him build two small islands in the Sunda Straits. However, upon arriving, he discovered that three islands—Krakatau, Besi, and Dwars-in-den-weg—had already been created by another god.\n\n'
        'Angry at this unexpected development, Hanomat tore open his bags, and the sand spilled out in great waves. These waves of sand piled up, forming two large mountains. One he named Karang, and the other Pulosari.\n\n'
        'While Pulosari remained an ordinary mountain, Karang grew taller and taller, its peak reaching into the heavens. The monkeys, thrilled by their king’s creation, believed the high mountain would allow them to climb to the stars. Soon, they swarmed to the top and began teasing the stars. Eventually, their mischief turned to biting, and they started nibbling at the small stars.\n\n'
        'The gods in heaven watched this with concern. One evening, Vishnu said to Brahma, "Look, O Creator, how the monkeys are teasing the stars. Shouldn\'t we punish them?"\n\n'
        'Brahma, kind-hearted as always, replied, "Let them be. They will tire of their teasing soon enough."\n\n'
        'But the teasing continued, and one night, a large monkey snapped at the evening star, causing it to shrink in fear behind a cloud. Vishnu pleaded with Brahma again, but Brahma, ever patient, suggested they wait until morning.\n\n'
        'The following morning, however, things escalated. The monkeys began biting the morning star, which shone brightly in the heavens. Terrified and unable to hide, the star called out to Brahma, "Great Brahma, if this teasing doesn\'t stop, I will no longer shine, and neither will any of the other stars!"\n\n'
        'The other stars joined in, pleading with Brahma to put an end to the mischief.\n\n'
        'Finally, Brahma summoned Lurah Dalam, the ruler of Bantam, and ordered him to bring Hanomat to heaven immediately.\n\n'
        'When Lurah Dalam found Hanomat, he delivered Brahma’s message. Hanomat, puzzled, asked, "What does Brahma want with me?"\n\n'
        'Lurah Dalam explained, "Brahma wishes for you to cut off part of your mountain so that the monkeys can no longer reach the stars."\n\n'
        'Outraged, Hanomat protested, "Cut off a piece of my beautiful mountain? Where will the piece go?"\n\n'
        'Lurah Dalam replied, "I believe it will fall into the sea."\n\n'
        'Hanomat stubbornly refused, "If Brahma wants to cut a mountain, he can use the three islands already in the Sunda Straits!"\n\n'
        'Enraged by Hanomat\'s insolence, Lurah Dalam commanded, "You dare defy Brahma? Go to heaven at once and retrieve the scissors, or I will banish you to the realm of ghosts!"\n\n'
        'Realizing he had no choice, Hanomat went to the gods’ heaven. Brahma handed him a pair of great scissors and instructed him to snip off a third of the Karang mountain to prevent the monkeys from climbing to the stars.\n\n'
        'Reluctantly, Hanomat returned to earth. Climbing to the top of Karang, he snipped off a third of the mountain. With a thunderous crash, the severed piece fell to the ground, and by Brahma’s will, it formed a group of smaller volcanoes.\n\n'
        'And so, it was decreed that the souls of wicked Baduwis would be sent to these volcanoes instead of the holy White Place, forever paying for their misdeeds.');
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
          Navigator.pushNamed(context, '/hard/karang/quiz');
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
