import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class SawahListeningPage extends StatefulWidget {
  final String courseTitle; // Add this line to define the courseTitle field

  SawahListeningPage(
      {super.key, required this.courseTitle}); // Update the constructor

  @override
  State<StatefulWidget> createState() => _ListeningPage();
}

class _ListeningPage extends State<SawahListeningPage> {
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
              '/intermediate/sawah/reading'); // Arahkan ke halaman Introduction
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
              'The powerful giant who had ruled over Smeru, Indra\'s holy mountain, since the world began had a beautiful daughter whom he loved more than all his other possessions. He cared for her so deeply that he watched over her day and night, keeping her hidden from all eyes.\n\n'
              'One morning, while making his rounds in his underground realm, his daughter felt a sudden desire to see how the world outside her father\'s kingdom looked. Unable to resist, she left the mountain and ventured onto the earth.\n\n'
              'At first, the bright daylight blinded her, making it hard to see. But as she adjusted, she became enchanted with all she saw. She floated over beautiful rice fields and lovely meadows where goats grazed. Suddenly, she spotted a young man standing in front of her. He resembled her father but was younger and more handsome.\n\n'
              'The young man spoke in a soft and friendly voice, "Who are you?"\n\n'
              'Dewi Jurangga had never heard a voice so gentle, unlike her father\'s loud, rumbling tone. Captivated, she introduced herself as the beloved only child of the mighty giant of Smeru. She shared that she had left her father\'s realm for the first time and that everything she had seen was so lovely that she would like to dwell on earth forever, even if it meant giving up her immortality.\n\n'
              '"Are you one of the gods, or are you a giant?" she asked.\n\n'
              '"I am a giant\'s son," he replied, "and I am the raksasa or guardian of the great temple of the gods. Brahma himself appointed me. My father is also a great and powerful giant, almost as mighty as yours. His name is Bromo."\n\n'
              'The raksasa then revealed that he was searching for a wife, as the gods had foretold he would find a beautiful young girl near one of the mountains. "And now I have found her!" he exclaimed joyfully.\n\n'
              'However, Dewi Jurangga looked at him sadly and shook her head. "I can never be your wife," she said. "My father loves me above everything else. He guards me as the light of his eyes and will never consent to my marriage with a raksasa, especially not one who is the son of Bromo."\n\n'
              'The raksasa was astonished. "Why not?" he asked.\n\n'
              '"Because your father, Bromo, has unleashed devastating fires and streams of boiling lava from his mountain, destroying the fertile fields that border ours. In one night, he turned them into an arid plain. That is why my father is an enemy of Bromo."\n\n'
              '"Nevertheless, I will speak to your father," the raksasa declared. That very day, before sunset, he approached Indra\'s holy mountain and asked the mighty giant for Dewi Jurangga\'s hand in marriage.\n\n'
              'The mountain giant roared with rage at the audacity of a raksasa daring to propose such a thing. His anger grew when Dewi Jurangga stated that if her father refused, she would go to Bromo and throw herself into the pool of fire on his mountain.\n\n'
              'After exhausting himself with roars, the mountain giant began to fear that if he refused the raksasa, Bromo might retaliate by sending more fire and lava over his fertile fields. He could also take Dewi Jurangga as a sacrifice if she threw herself into the pool of fire.\n\n'
              'So, he said to the raksasa, "Listen, favorite of the great Brahma. Many years ago, I promised the gods that my child would marry only a being with supernatural powers and strength—no giant\'s son, but a son of the gods must be her husband. To prove your worthiness, you must create a sea of sand around my enemy Bromo in one night—from sunset to the crowing of the first cock. The sea must be a thousand feet deep and a thousand feet wide, so that fire cannot harm my fields, and streams of boiling lava will be quenched in the sand. If you succeed, you may have my daughter as your wife. But if the sea of sand is not complete when the first cock crows, you shall be turned to stone and remain so for a thousand times a thousand years."\n\n'
              'The raksasa pondered for a moment before lifting his head and looking at Dewi Jurangga\'s lovely face. "I will try to do this, oh great ruler of India\'s holy mountain!" he declared. "Tomorrow evening, when the sun sets, I will begin my task."\n\n'
              'He asked Dewi Jurangga to bring him the biggest batok (half a coconut shell) she could find and to lay it on the spot where they first met.\n\n'
              'The following evening, just before sunset, Dewi Jurangga brought the batok to him. "Do your best," she whispered. "Show your power, and we shall be happy forever after."\n\n'
              'The raksasa took the batok from her hands, saying earnestly, "I will prove myself, kembang manis (lovely flower)."\n\n'
              'As soon as the sun dipped below the horizon, he began filling the batok with sand. He piled the sand into mounds and hills, scooping it from around Mount Bromo while ignoring Bromo\'s angry shouts and red-hot rocks. He worked tirelessly throughout the night, and as dawn approached, he had constructed a sea of sand around Bromo that was nine hundred and ninety feet wide and nine hundred and ninety feet deep.\n\n'
              '"Just ten more feet to fill before the sun rises," he panted. "Then..."\n\n'
              'Meanwhile, the giant of Smeru, Indra\'s holy mountain, watched with keen interest. When he realized that the raksasa would finish the task before daybreak, he became furious, knowing he would have to keep his promise.\n\n'
              'Just then, the raksasa threw another batok of sand onto the mounds with a thunderous noise, which only fueled the mountain giant\'s rage. "Just a few more feet, and the work will be done!" he muttered. "And there’s still plenty of time until daybreak!"\n\n'
              'Suddenly, he thought he heard a cock crow. No, it was just his imagination. But what if he imitated the crowing of a cock? He was a giant, a demigod; he could do anything!\n\n'
              '"Kukeleku!" he cried out suddenly.\n\n'
              '"Kukeleku," answered the roosters in various villages.\n\n'
              'The cocks had crowed! The day had begun! The raksasa, who still had three feet to fill, heard the sound with dread and fury. He balled his fist and, in a fit of rage, threw the batok filled with sand away from him.\n\n'
              'Upside down, the batok landed in the deep hole he had scooped around Bromo and remained there forever, forming a high mountain that people came to call Batok.\n\n'
              'At that moment, the raksasa heard a heart-wrenching scream. He looked up to see Dewi Jurangga staring at him, her dark eyes wide and her hair flowing wildly. "Kembang Manis! Kembang!" he cried sadly. "All my work has been for nothing!"\n\n'
              'But the beautiful daughter of the mountain giant did not respond. She had been turned to stone in horror, transformed into a mountain, which became known as Kembang after the last loving word the raksasa had called her.\n\n'
              'The raksasa, too, was turned to stone, just as the mountain giant had prophesied if he failed to complete his task before daybreak. He became a mountain called Segarawedi.\n\n'
              'The mountain giant received his punishment as well. Overwhelmed with fear of Brahma\'s anger, he hid in the depths of Smeru, where he still sits, sighing and moaning over the two lives he ruined so cruelly. With every sigh, he expels a heavy cloud of smoke that pushes through the mountain\'s summit and spreads across the sky in a beautiful white plume.\n\n'
              'And so, the mountain giant must remain there, sighing and moaning, until the raksasa, now Segarawedi, and Dewi Jurangga, now Kembang, return to their human forms after a thousand times a thousand years—until Mount Bromo has sunk out of sight, and the Sand Sea is once again what it was in the beginning.',
              textAlign: TextAlign.left,
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 18,
                color: Color(0xff000000),
                fontFamily: 'Inter-Light',
                fontWeight: FontWeight.normal,
              ),
              maxLines: null,
            )
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
        'The powerful giant who had ruled over Smeru, Indra\'s holy mountain, since the world began had a beautiful daughter whom he loved more than all his other possessions. He cared for her so deeply that he watched over her day and night, keeping her hidden from all eyes.\n\n'
        'One morning, while making his rounds in his underground realm, his daughter felt a sudden desire to see how the world outside her father\'s kingdom looked. Unable to resist, she left the mountain and ventured onto the earth.\n\n'
        'At first, the bright daylight blinded her, making it hard to see. But as she adjusted, she became enchanted with all she saw. She floated over beautiful rice fields and lovely meadows where goats grazed. Suddenly, she spotted a young man standing in front of her. He resembled her father but was younger and more handsome.\n\n'
        'The young man spoke in a soft and friendly voice, "Who are you?"\n\n'
        'Dewi Jurangga had never heard a voice so gentle, unlike her father\'s loud, rumbling tone. Captivated, she introduced herself as the beloved only child of the mighty giant of Smeru. She shared that she had left her father\'s realm for the first time and that everything she had seen was so lovely that she would like to dwell on earth forever, even if it meant giving up her immortality.\n\n'
        '"Are you one of the gods, or are you a giant?" she asked.\n\n'
        '"I am a giant\'s son," he replied, "and I am the raksasa or guardian of the great temple of the gods. Brahma himself appointed me. My father is also a great and powerful giant, almost as mighty as yours. His name is Bromo."\n\n'
        'The raksasa then revealed that he was searching for a wife, as the gods had foretold he would find a beautiful young girl near one of the mountains. "And now I have found her!" he exclaimed joyfully.\n\n'
        'However, Dewi Jurangga looked at him sadly and shook her head. "I can never be your wife," she said. "My father loves me above everything else. He guards me as the light of his eyes and will never consent to my marriage with a raksasa, especially not one who is the son of Bromo."\n\n'
        'The raksasa was astonished. "Why not?" he asked.\n\n'
        '"Because your father, Bromo, has unleashed devastating fires and streams of boiling lava from his mountain, destroying the fertile fields that border ours. In one night, he turned them into an arid plain. That is why my father is an enemy of Bromo."\n\n'
        '"Nevertheless, I will speak to your father," the raksasa declared. That very day, before sunset, he approached Indra\'s holy mountain and asked the mighty giant for Dewi Jurangga\'s hand in marriage.\n\n'
        'The mountain giant roared with rage at the audacity of a raksasa daring to propose such a thing. His anger grew when Dewi Jurangga stated that if her father refused, she would go to Bromo and throw herself into the pool of fire on his mountain.\n\n'
        'After exhausting himself with roars, the mountain giant began to fear that if he refused the raksasa, Bromo might retaliate by sending more fire and lava over his fertile fields. He could also take Dewi Jurangga as a sacrifice if she threw herself into the pool of fire.\n\n'
        'So, he said to the raksasa, "Listen, favorite of the great Brahma. Many years ago, I promised the gods that my child would marry only a being with supernatural powers and strength—no giant\'s son, but a son of the gods must be her husband. To prove your worthiness, you must create a sea of sand around my enemy Bromo in one night—from sunset to the crowing of the first cock. The sea must be a thousand feet deep and a thousand feet wide, so that fire cannot harm my fields, and streams of boiling lava will be quenched in the sand. If you succeed, you may have my daughter as your wife. But if the sea of sand is not complete when the first cock crows, you shall be turned to stone and remain so for a thousand times a thousand years."\n\n'
        'The raksasa pondered for a moment before lifting his head and looking at Dewi Jurangga\'s lovely face. "I will try to do this, oh great ruler of India\'s holy mountain!" he declared. "Tomorrow evening, when the sun sets, I will begin my task."\n\n'
        'He asked Dewi Jurangga to bring him the biggest batok (half a coconut shell) she could find and to lay it on the spot where they first met.\n\n'
        'The following evening, just before sunset, Dewi Jurangga brought the batok to him. "Do your best," she whispered. "Show your power, and we shall be happy forever after."\n\n'
        'The raksasa took the batok from her hands, saying earnestly, "I will prove myself, kembang manis (lovely flower)."\n\n'
        'As soon as the sun dipped below the horizon, he began filling the batok with sand. He piled the sand into mounds and hills, scooping it from around Mount Bromo while ignoring Bromo\'s angry shouts and red-hot rocks. He worked tirelessly throughout the night, and as dawn approached, he had constructed a sea of sand around Bromo that was nine hundred and ninety feet wide and nine hundred and ninety feet deep.\n\n'
        '"Just ten more feet to fill before the sun rises," he panted. "Then..."\n\n'
        'Meanwhile, the giant of Smeru, Indra\'s holy mountain, watched with keen interest. When he realized that the raksasa would finish the task before daybreak, he became furious, knowing he would have to keep his promise.\n\n'
        'Just then, the raksasa threw another batok of sand onto the mounds with a thunderous noise, which only fueled the mountain giant\'s rage. "Just a few more feet, and the work will be done!" he muttered. "And there’s still plenty of time until daybreak!"\n\n'
        'Suddenly, he thought he heard a cock crow. No, it was just his imagination. But what if he imitated the crowing of a cock? He was a giant, a demigod; he could do anything!\n\n'
        '"Kukeleku!" he cried out suddenly.\n\n'
        '"Kukeleku," answered the roosters in various villages.\n\n'
        'The cocks had crowed! The day had begun! The raksasa, who still had three feet to fill, heard the sound with dread and fury. He balled his fist and, in a fit of rage, threw the batok filled with sand away from him.\n\n'
        'Upside down, the batok landed in the deep hole he had scooped around Bromo and remained there forever, forming a high mountain that people came to call Batok.\n\n'
        'At that moment, the raksasa heard a heart-wrenching scream. He looked up to see Dewi Jurangga staring at him, her dark eyes wide and her hair flowing wildly. "Kembang Manis! Kembang!" he cried sadly. "All my work has been for nothing!"\n\n'
        'But the beautiful daughter of the mountain giant did not respond. She had been turned to stone in horror, transformed into a mountain, which became known as Kembang after the last loving word the raksasa had called her.\n\n'
        'The raksasa, too, was turned to stone, just as the mountain giant had prophesied if he failed to complete his task before daybreak. He became a mountain called Segarawedi.\n\n'
        'The mountain giant received his punishment as well. Overwhelmed with fear of Brahma\'s anger, he hid in the depths of Smeru, where he still sits, sighing and moaning over the two lives he ruined so cruelly. With every sigh, he expels a heavy cloud of smoke that pushes through the mountain\'s summit and spreads across the sky in a beautiful white plume.\n\n'
        'And so, the mountain giant must remain there, sighing and moaning, until the raksasa, now Segarawedi, and Dewi Jurangga, now Kembang, return to their human forms after a thousand times a thousand years—until Mount Bromo has sunk out of sight, and the Sand Sea is once again what it was in the beginning.');
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
          Navigator.pushNamed(context, '/intermediate/sawah/quiz');
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
