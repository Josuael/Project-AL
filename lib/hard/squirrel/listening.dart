import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class SquirrelListeningPage extends StatefulWidget {
  final String courseTitle; // Add this line to define the courseTitle field

  SquirrelListeningPage(
      {super.key, required this.courseTitle}); // Update the constructor

  @override
  State<StatefulWidget> createState() => _ListeningPage();
}

class _ListeningPage extends State<SquirrelListeningPage> {
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
              '/hard/squirrel/reading'); // Arahkan ke halaman Introduction
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
              'One day, a man was walking through a dense forest. In one hand, he carried a kris, and in the other, a long lance, in case he encountered tigers or snakes. He had reached the edge of the forest and congratulated himself for not having to use either weapon when, suddenly, he heard a frightful noise above his head. Looking up, he saw an enormous snake caught by its tail in a split branch.\n\n'
              'The snake was struggling to free itself and, upon seeing the man, called out, "Oh, help me! Widen the split in the branch with your lance so that I can escape."\n\n'
              'The man hesitated and said, "I will help you, but only if you promise not to harm me after I free you."\n\n'
              '"Why would I harm you?" replied the snake. "You have nothing to fear from me."\n\n'
              'So, the man used his lance to widen the split in the branch, allowing the snake to free its tail. The snake then said, "Reach your lance up to me so I can crawl down to the ground."\n\n'
              'The man did as the snake asked, but instead of creeping down the lance, the snake coiled around the man’s neck, tightening its grip.\n\n'
              '"What are you doing?" the man cried in terror. "Why are you wrapping yourself around my neck?"\n\n'
              '"Because I want to kill you," hissed the snake.\n\n'
              '"But you promised not to harm me!" the man protested.\n\n'
              '"True, I did," the snake replied. "But that was when I was still in the tree. Now, I am on the earth, and here, good is always repaid with evil."\n\n'
              'Desperate to escape, the man thought quickly and said, "Very well, you may kill me. But first, I want to hear the opinion of three others in the forest. Let us ask them if what you say is true."\n\n'
              '"Agreed," said the snake. "Let us go."\n\n'
              'They soon came across a palm tree. The man explained his situation and asked, "Is it true that good is always rewarded with evil on earth?"\n\n'
              '"Yes, it is true," said the palm tree. "I provide shade and comfort to weary travelers, yet they repay me by cutting me down and throwing me into the fire."\n\n'
              '"See?" hissed the snake, tightening its grip.\n\n'
              'They walked further and came to a brook. The man repeated his story, asking the brook if it was true.\n\n'
              '"The snake is right," chattered the brook. "I quench the thirst of those who come to me, yet they repay me by throwing filth into my clear waters."\n\n'
              '"Do you hear that?" said the snake, squeezing the man tighter.\n\n'
              'The man, gasping for breath, begged for one last opinion. "Let us ask the squirrel."\n\n'
              'The snake agreed, and they approached a squirrel perched on a nearby branch. The man told the squirrel his story, asking if it was true that good is always repaid with evil.\n\n'
              'The squirrel thought for a moment and said, "That is difficult to judge. I need to see how it all happened. Show me how you saved the snake."\n\n'
              'The snake agreed to demonstrate. It climbed up the tree and placed its tail back into the split branch. As it struggled to free itself, just as before, the man seized the moment and struck the snake dead with his lance.',
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
        'One day, a man was walking through a dense forest. In one hand, he carried a kris, and in the other, a long lance, in case he encountered tigers or snakes. He had reached the edge of the forest and congratulated himself for not having to use either weapon when, suddenly, he heard a frightful noise above his head. Looking up, he saw an enormous snake caught by its tail in a split branch.\n\n'
        'The snake was struggling to free itself and, upon seeing the man, called out, "Oh, help me! Widen the split in the branch with your lance so that I can escape."\n\n'
        'The man hesitated and said, "I will help you, but only if you promise not to harm me after I free you."\n\n'
        '"Why would I harm you?" replied the snake. "You have nothing to fear from me."\n\n'
        'So, the man used his lance to widen the split in the branch, allowing the snake to free its tail. The snake then said, "Reach your lance up to me so I can crawl down to the ground."\n\n'
        'The man did as the snake asked, but instead of creeping down the lance, the snake coiled around the man’s neck, tightening its grip.\n\n'
        '"What are you doing?" the man cried in terror. "Why are you wrapping yourself around my neck?"\n\n'
        '"Because I want to kill you," hissed the snake.\n\n'
        '"But you promised not to harm me!" the man protested.\n\n'
        '"True, I did," the snake replied. "But that was when I was still in the tree. Now, I am on the earth, and here, good is always repaid with evil."\n\n'
        'Desperate to escape, the man thought quickly and said, "Very well, you may kill me. But first, I want to hear the opinion of three others in the forest. Let us ask them if what you say is true."\n\n'
        '"Agreed," said the snake. "Let us go."\n\n'
        'They soon came across a palm tree. The man explained his situation and asked, "Is it true that good is always rewarded with evil on earth?"\n\n'
        '"Yes, it is true," said the palm tree. "I provide shade and comfort to weary travelers, yet they repay me by cutting me down and throwing me into the fire."\n\n'
        '"See?" hissed the snake, tightening its grip.\n\n'
        'They walked further and came to a brook. The man repeated his story, asking the brook if it was true.\n\n'
        '"The snake is right," chattered the brook. "I quench the thirst of those who come to me, yet they repay me by throwing filth into my clear waters."\n\n'
        '"Do you hear that?" said the snake, squeezing the man tighter.\n\n'
        'The man, gasping for breath, begged for one last opinion. "Let us ask the squirrel."\n\n'
        'The snake agreed, and they approached a squirrel perched on a nearby branch. The man told the squirrel his story, asking if it was true that good is always repaid with evil.\n\n'
        'The squirrel thought for a moment and said, "That is difficult to judge. I need to see how it all happened. Show me how you saved the snake."\n\n'
        'The snake agreed to demonstrate. It climbed up the tree and placed its tail back into the split branch. As it struggled to free itself, just as before, the man seized the moment and struck the snake dead with his lance.');
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
          Navigator.pushNamed(context, '/hard/squirrel/quiz');
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
