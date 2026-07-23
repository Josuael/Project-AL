import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class JarsListeningPage extends StatefulWidget {
  final String courseTitle; // Add this line to define the courseTitle field

  JarsListeningPage(
      {super.key, required this.courseTitle}); // Update the constructor

  @override
  State<StatefulWidget> createState() => _ListeningPage();
}

class _ListeningPage extends State<JarsListeningPage> {
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
              '/intermediate/jars/reading'); // Arahkan ke halaman Introduction
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
              'Rajah Pahit was the son of one of the mightiest rulers in all of Java. One day, he became caught up in a game of dice and lost his money, along with his costly gold, silver, and jeweled ornaments. The only possessions he had left were the heirlooms inherited from his ancestors, which he was forced to pawn to pay his debts.\n\n'
              'Devastated by the loss of his heirlooms—many of which had belonged to his father—Rajah Pahit was afraid to confess his misfortune to his father. That night, he fled the kingdom with his wife and their two-year-old daughter. With no destination in mind, they wandered from place to place until they eventually settled down on the slopes of Mount Merbabu. There, Rajah Pahit lived a life of penance for many years, praying and fasting until Brahma took pity on him.\n\n'
              'One evening, Rajah Pahit, his wife, and their now-grown daughter Ruwana sat in front of their hut. As always, Rajah Pahit was softly praying with his head bowed. When he paused, his wife gently urged him to rest, assuring him that Brahma must hear his prayers soon. However, Rajah Pahit merely shook his snow-white head, his dark skin contrasting with his white hair. His deep-set, brilliant eyes betrayed his youthfulness.\n\n'
              'Brahma, knowing all, recognized that Rajah Pahit was not a wicked man but had merely succumbed to a moment of weakness. Wanting to help, Brahma decided to call upon Kajangka, the ruler of the moon. "Take something to Rajah Pahit that will make him rich again, so he can retrieve all he lost in his game of chance," Brahma instructed.\n\n'
              'Kajangka was reluctant to help the people of Earth but complied with Brahma\'s request. The following evening, he rode a moonbeam to Earth, settling near the top of Merbabu where he could see Rajah Pahit\'s bamboo hut. Upon glancing through a crack in the bamboo walls, he saw Ruwana, a maiden as beautiful and radiant as the sun. Instantly desiring her as his bride, Kajangka transformed himself into a handsome young man and entered the hut to ask Rajah Pahit for his daughter\'s hand in marriage.\n\n'
              '"I am only a poor exile," Rajah Pahit replied haughtily, "but I will not give my daughter to someone of a lower caste." \n\n'
              '"I do not belong to a lower caste," Kajangka insisted. "I have been sent by Brahma. It is his desire that you become rich again so you can reclaim your heirlooms. Listen!" He leaned in closely. "The Creator kneaded the sun from a pile of clay. From the leftover clay, he made the moon. Just before beginning the moon, I, who had not yet drunk from the life-water and was merely a mortal wandering the earth, took a piece of this clay and buried it in Merbabu, the very mountain on which you live. If you promise to give me your lovely daughter, I will teach you the art of pottery-making."\n\n'
              '"Why should I learn pottery-making?" Rajah Pahit asked.\n\n'
              '"So that you can become rich!" Kajangka replied patiently. "You will make pottery from this unusual clay that I buried here in the mountain. Because it is made from the same clay from which the moon was kneaded, the pottery will be rare and costly."\n\n'
              'Rajah Pahit agreed to give his daughter Ruwana to Kajangka, and in return, Kajangka taught him pottery-making. The clay proved inexhaustible and possessed a peculiar whiteness. Kajangka suggested they make big water jars, and Rajah Pahit quickly learned the art in just one night.\n\n'
              'Before long, they had crafted so many water jars that the tops of Merbabu and the smaller nearby mountains were covered with them. \n\n'
              '"What an incredible quantity of water jars we have!" Kajangka exclaimed one day. "We should build a wall around the mountain tops to protect them from potential thieves." \n\n'
              '"That\'s a good idea," Rajah Pahit replied. "Let’s begin immediately."\n\n'
              'As they started building a bamboo wall around the mountain tops to hide the jars from view, a violent thunderstorm suddenly erupted above Merbabu. Rajah Pahit rushed to his hut, while Kajangka flew back to the moon. When the storm subsided and the two potters returned to their work, they were horrified to discover that all the water jars had vanished from the unprotected mountains.\n\n'
              '"They must have fled out of fear of the lightning," Rajah Pahit theorized. "But where could they have gone?"\n\n'
              '"I do not know," Kajangka admitted. "But this must be a sign from Brahma. He is telling us that the remaining jars must be sold. I must return to the heavens, but I will take my wife with me."\n\n'
              'At first, Rajah Pahit was reluctant, knowing how much he would miss his daughter. However, as he began selling the beautiful water jars, he quickly amassed enough money to buy back his heirlooms and return to his kingdom. Although he grieved the loss of Ruwana, he found solace in knowing she was happy with Kajangka, for he could see her laughing face when the moon was full.\n\n'
              'As for the water jars that disappeared, they fled not only from Java but also traveled far to the island of Borneo, where they buried themselves deep within the dense, ancient forests, believing no mortal would ever find them. However, centuries later, the natives of Borneo discovered them. When the Dyaks learned that these jars were made from the same clay that created the sun and the moon, they rejoiced, realizing that possessing such supernatural jars would bring great fortune. These jars were believed to banish sickness and evil spirits from any household.\n\n'
              'Even today, having one of these jars in the home holds significant importance. It not only wards off illness and malevolent forces but also brings good luck during harvest and fishing seasons and blesses marriages. The acquisition of a new water jar is a cause for celebration. In homes where a new jar is bought, festivities last for seven days and nights, with Dyak priests singing and dancing. Seven little figures carved from ironwood are placed at the doorway for seven months, signaling to all that the household has welcomed a new water jar.',
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
        'Rajah Pahit was the son of one of the mightiest rulers in all of Java. One day, he became caught up in a game of dice and lost his money, along with his costly gold, silver, and jeweled ornaments. The only possessions he had left were the heirlooms inherited from his ancestors, which he was forced to pawn to pay his debts.\n\n'
        'Devastated by the loss of his heirlooms—many of which had belonged to his father—Rajah Pahit was afraid to confess his misfortune to his father. That night, he fled the kingdom with his wife and their two-year-old daughter. With no destination in mind, they wandered from place to place until they eventually settled down on the slopes of Mount Merbabu. There, Rajah Pahit lived a life of penance for many years, praying and fasting until Brahma took pity on him.\n\n'
        'One evening, Rajah Pahit, his wife, and their now-grown daughter Ruwana sat in front of their hut. As always, Rajah Pahit was softly praying with his head bowed. When he paused, his wife gently urged him to rest, assuring him that Brahma must hear his prayers soon. However, Rajah Pahit merely shook his snow-white head, his dark skin contrasting with his white hair. His deep-set, brilliant eyes betrayed his youthfulness.\n\n'
        'Brahma, knowing all, recognized that Rajah Pahit was not a wicked man but had merely succumbed to a moment of weakness. Wanting to help, Brahma decided to call upon Kajangka, the ruler of the moon. "Take something to Rajah Pahit that will make him rich again, so he can retrieve all he lost in his game of chance," Brahma instructed.\n\n'
        'Kajangka was reluctant to help the people of Earth but complied with Brahma\'s request. The following evening, he rode a moonbeam to Earth, settling near the top of Merbabu where he could see Rajah Pahit\'s bamboo hut. Upon glancing through a crack in the bamboo walls, he saw Ruwana, a maiden as beautiful and radiant as the sun. Instantly desiring her as his bride, Kajangka transformed himself into a handsome young man and entered the hut to ask Rajah Pahit for his daughter\'s hand in marriage.\n\n'
        '"I am only a poor exile," Rajah Pahit replied haughtily, "but I will not give my daughter to someone of a lower caste." \n\n'
        '"I do not belong to a lower caste," Kajangka insisted. "I have been sent by Brahma. It is his desire that you become rich again so you can reclaim your heirlooms. Listen!" He leaned in closely. "The Creator kneaded the sun from a pile of clay. From the leftover clay, he made the moon. Just before beginning the moon, I, who had not yet drunk from the life-water and was merely a mortal wandering the earth, took a piece of this clay and buried it in Merbabu, the very mountain on which you live. If you promise to give me your lovely daughter, I will teach you the art of pottery-making."\n\n'
        '"Why should I learn pottery-making?" Rajah Pahit asked.\n\n'
        '"So that you can become rich!" Kajangka replied patiently. "You will make pottery from this unusual clay that I buried here in the mountain. Because it is made from the same clay from which the moon was kneaded, the pottery will be rare and costly."\n\n'
        'Rajah Pahit agreed to give his daughter Ruwana to Kajangka, and in return, Kajangka taught him pottery-making. The clay proved inexhaustible and possessed a peculiar whiteness. Kajangka suggested they make big water jars, and Rajah Pahit quickly learned the art in just one night.\n\n'
        'Before long, they had crafted so many water jars that the tops of Merbabu and the smaller nearby mountains were covered with them. \n\n'
        '"What an incredible quantity of water jars we have!" Kajangka exclaimed one day. "We should build a wall around the mountain tops to protect them from potential thieves." \n\n'
        '"That\'s a good idea," Rajah Pahit replied. "Let’s begin immediately."\n\n'
        'As they started building a bamboo wall around the mountain tops to hide the jars from view, a violent thunderstorm suddenly erupted above Merbabu. Rajah Pahit rushed to his hut, while Kajangka flew back to the moon. When the storm subsided and the two potters returned to their work, they were horrified to discover that all the water jars had vanished from the unprotected mountains.\n\n'
        '"They must have fled out of fear of the lightning," Rajah Pahit theorized. "But where could they have gone?"\n\n'
        '"I do not know," Kajangka admitted. "But this must be a sign from Brahma. He is telling us that the remaining jars must be sold. I must return to the heavens, but I will take my wife with me."\n\n'
        'At first, Rajah Pahit was reluctant, knowing how much he would miss his daughter. However, as he began selling the beautiful water jars, he quickly amassed enough money to buy back his heirlooms and return to his kingdom. Although he grieved the loss of Ruwana, he found solace in knowing she was happy with Kajangka, for he could see her laughing face when the moon was full.\n\n'
        'As for the water jars that disappeared, they fled not only from Java but also traveled far to the island of Borneo, where they buried themselves deep within the dense, ancient forests, believing no mortal would ever find them. However, centuries later, the natives of Borneo discovered them. When the Dyaks learned that these jars were made from the same clay that created the sun and the moon, they rejoiced, realizing that possessing such supernatural jars would bring great fortune. These jars were believed to banish sickness and evil spirits from any household.\n\n'
        'Even today, having one of these jars in the home holds significant importance. It not only wards off illness and malevolent forces but also brings good luck during harvest and fishing seasons and blesses marriages. The acquisition of a new water jar is a cause for celebration. In homes where a new jar is bought, festivities last for seven days and nights, with Dyak priests singing and dancing. Seven little figures carved from ironwood are placed at the doorway for seven months, signaling to all that the household has welcomed a new water jar.');
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
          Navigator.pushNamed(context, '/intermediate/jars/quiz');
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
