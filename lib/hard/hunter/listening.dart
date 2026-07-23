import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class HunterListeningPage extends StatefulWidget {
  final String courseTitle; // Add this line to define the courseTitle field

  HunterListeningPage(
      {super.key, required this.courseTitle}); // Update the constructor

  @override
  State<StatefulWidget> createState() => _ListeningPage();
}

class _ListeningPage extends State<HunterListeningPage> {
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
              '/hard/hunter/reading'); // Arahkan ke halaman Introduction
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
              'A young man named Awang Durahman lived in a small village near a great forest. He loved nothing more than to wander in the woods, looking for game and dreaming about the future.\n\n'
              'One day, when the sun was high and the air was hot, Awang took his spear and ventured into the forest, where it was cool and quiet. As he walked, he began talking to himself:\n\n'
              '"Look at me! I am the mightiest hunter in the land! No animal can hear me coming, for I walk so softly."\n\n'
              'Just as he said this, he nearly stumbled upon a small deer lying asleep in the shadows. Awang looked down at the deer and thought, "It’s too defenseless to kill. I’ll sit here for a bit and enjoy a smoke."\n\n'
              'He filled his pipe and hung his tobacco pouch on the deer’s antlers. Then he leaned against a tree with his spear beside him and began to daydream.\n\n'
              '"This deer will provide a lot of meat when I kill it," he thought. "I’ll have plenty for my mother, my father, and myself. I’ll sell the rest and make a good sum of money. What should I do with the money?"\n\n'
              'Awang smiled to himself, thinking, "I will buy ducks! So many ducks that they’ll make a racket in the village and eat all the grain. People will ask, ‘Whose ducks are these?’ and my mother will say, ‘They belong to Awang Durahman!’ Then everyone will say, ‘He must be a rich man to have so many ducks.’"\n\n'
              'He continued dreaming. "After selling the ducks, I’ll buy goats. Lots of goats! They will graze in the fields, and people will ask, ‘Whose goats are these?’ and my mother will say, ‘They belong to Awang Durahman!’ Then the villagers will exclaim, ‘He must be rich to own so many goats.’"\n\n'
              'Awang’s imagination carried him further. "Eventually, I’ll sell the goats and buy buffaloes. Strong, hardworking buffaloes that will plow my fields and give me plenty of milk. People will ask, ‘Whose buffaloes are these?’ and my mother will reply, ‘They belong to Awang Durahman!’ The villagers will then say, ‘He must be very rich to own so many buffaloes.’"\n\n'
              'Leaning back against the tree, Awang grinned as he puffed on his pipe. "Then, I’ll sell the buffaloes and buy elephants! They’ll be so strong that they’ll knock down my neighbors\' bamboo houses, trample their fields, and wade in the streams. People will cry, ‘Whose elephants are these?’ and my mother will answer, ‘They belong to Awang Durahman!’ And the villagers will say, ‘He must be enormously rich to own so many elephants!’"\n\n'
              'Awang watched as the smoke from his pipe drifted lazily upward toward the sky, just barely visible through the treetops. "Afterward," he thought, "I’ll sell the elephants to the Rajah. He’ll be so impressed that he’ll give me his daughter in marriage, and together, we’ll sail to distant islands like Java, Bali, and Borneo."\n\n'
              'Awang could almost feel the swaying motion of the boat as he imagined himself sailing with the Rajah’s daughter beside him. "I will sit on the deck, with my beautiful wife by my side, while my servants fan me with palm fronds and bring me cooling drinks. And my little son, Hassan, will crawl around the deck as I watch over him."\n\n'
              'In his mind, he could see little Hassan playing on the deck of the ship. Awang’s daydream grew more vivid, and suddenly he leapt to his feet, crying out, "Hassan has fallen into the sea! Save him, Achmed! Kerto! Save my son!"\n\n'
              'In his panic, Awang’s spear fell to the ground, and the startled deer leapt up and bolted into the forest, the tobacco pouch still dangling from its antlers.\n\n'
              'Awang blinked, rubbed his eyes, and sighed. Picking up his spear, he began walking slowly down the forest path. "Aie," he moaned sadly. "I was rich, and now I am poor. That wretched deer has run off with my ship, my wife, my son, and my tobacco pouch! Aie, Aie!"\n\n'
              'Despite his misfortune, the forest remained cool, sweet-smelling, and quiet. The path was soft under his feet, and the sunlight filtered through the tall trees, casting a golden glow between the shadows.\n\n'
              'Awang continued to walk in silence, listening to the rising wind as it whispered through the trees. He paused for a moment, smiling as he listened closely.\n\n'
              '"What is it the wind says?" he asked himself. Then, with a smile spreading across his face, he answered, "The wind says, ‘Whose tobacco pouch is this?’ And the wind replies, ‘Why, it belongs to Awang Durahman, the mighty hunter!’"',
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
        'A young man named Awang Durahman lived in a small village near a great forest. He loved nothing more than to wander in the woods, looking for game and dreaming about the future.\n\n'
        'One day, when the sun was high and the air was hot, Awang took his spear and ventured into the forest, where it was cool and quiet. As he walked, he began talking to himself:\n\n'
        '"Look at me! I am the mightiest hunter in the land! No animal can hear me coming, for I walk so softly."\n\n'
        'Just as he said this, he nearly stumbled upon a small deer lying asleep in the shadows. Awang looked down at the deer and thought, "It’s too defenseless to kill. I’ll sit here for a bit and enjoy a smoke."\n\n'
        'He filled his pipe and hung his tobacco pouch on the deer’s antlers. Then he leaned against a tree with his spear beside him and began to daydream.\n\n'
        '"This deer will provide a lot of meat when I kill it," he thought. "I’ll have plenty for my mother, my father, and myself. I’ll sell the rest and make a good sum of money. What should I do with the money?"\n\n'
        'Awang smiled to himself, thinking, "I will buy ducks! So many ducks that they’ll make a racket in the village and eat all the grain. People will ask, ‘Whose ducks are these?’ and my mother will say, ‘They belong to Awang Durahman!’ Then everyone will say, ‘He must be a rich man to have so many ducks.’"\n\n'
        'He continued dreaming. "After selling the ducks, I’ll buy goats. Lots of goats! They will graze in the fields, and people will ask, ‘Whose goats are these?’ and my mother will say, ‘They belong to Awang Durahman!’ Then the villagers will exclaim, ‘He must be rich to own so many goats.’"\n\n'
        'Awang’s imagination carried him further. "Eventually, I’ll sell the goats and buy buffaloes. Strong, hardworking buffaloes that will plow my fields and give me plenty of milk. People will ask, ‘Whose buffaloes are these?’ and my mother will reply, ‘They belong to Awang Durahman!’ The villagers will then say, ‘He must be very rich to own so many buffaloes.’"\n\n'
        'Leaning back against the tree, Awang grinned as he puffed on his pipe. "Then, I’ll sell the buffaloes and buy elephants! They’ll be so strong that they’ll knock down my neighbors\' bamboo houses, trample their fields, and wade in the streams. People will cry, ‘Whose elephants are these?’ and my mother will answer, ‘They belong to Awang Durahman!’ And the villagers will say, ‘He must be enormously rich to own so many elephants!’"\n\n'
        'Awang watched as the smoke from his pipe drifted lazily upward toward the sky, just barely visible through the treetops. "Afterward," he thought, "I’ll sell the elephants to the Rajah. He’ll be so impressed that he’ll give me his daughter in marriage, and together, we’ll sail to distant islands like Java, Bali, and Borneo."\n\n'
        'Awang could almost feel the swaying motion of the boat as he imagined himself sailing with the Rajah’s daughter beside him. "I will sit on the deck, with my beautiful wife by my side, while my servants fan me with palm fronds and bring me cooling drinks. And my little son, Hassan, will crawl around the deck as I watch over him."\n\n'
        'In his mind, he could see little Hassan playing on the deck of the ship. Awang’s daydream grew more vivid, and suddenly he leapt to his feet, crying out, "Hassan has fallen into the sea! Save him, Achmed! Kerto! Save my son!"\n\n'
        'In his panic, Awang’s spear fell to the ground, and the startled deer leapt up and bolted into the forest, the tobacco pouch still dangling from its antlers.\n\n'
        'Awang blinked, rubbed his eyes, and sighed. Picking up his spear, he began walking slowly down the forest path. "Aie," he moaned sadly. "I was rich, and now I am poor. That wretched deer has run off with my ship, my wife, my son, and my tobacco pouch! Aie, Aie!"\n\n'
        'Despite his misfortune, the forest remained cool, sweet-smelling, and quiet. The path was soft under his feet, and the sunlight filtered through the tall trees, casting a golden glow between the shadows.\n\n'
        'Awang continued to walk in silence, listening to the rising wind as it whispered through the trees. He paused for a moment, smiling as he listened closely.\n\n'
        '"What is it the wind says?" he asked himself. Then, with a smile spreading across his face, he answered, "The wind says, ‘Whose tobacco pouch is this?’ And the wind replies, ‘Why, it belongs to Awang Durahman, the mighty hunter!’"');
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
          Navigator.pushNamed(context, '/hard/hunter/quiz');
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
