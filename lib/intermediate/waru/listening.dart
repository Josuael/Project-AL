import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class WaruListeningPage extends StatefulWidget {
  final String courseTitle; // Add this line to define the courseTitle field

  WaruListeningPage(
      {super.key, required this.courseTitle}); // Update the constructor

  @override
  State<StatefulWidget> createState() => _ListeningPage();
}

class _ListeningPage extends State<WaruListeningPage> {
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
              '/intermediate/waru+/reading'); // Arahkan ke halaman Introduction
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
              'Behind a certain village in Java, there stands a mountain where a tree called the waru grows. The natives cut lance shafts from the wood of this tree, which holds great esteem among the Javanese. They believe that a lance with a shaft made of waru wood will ensure victory over their enemies. The origin of this belief is found in a very old story.\n\n'
              'The name of the mountain means "fragrant," signifying a place with an air of holiness. People regard it as holy because many hermits dwell in its caverns, some of whom possess supernatural powers. Among these hermits was a very old, pious, and wise man known as Kawitjaksana, which means "hermit full of wisdom." People traveled from distant places to hear his words and seek his advice, which was always beneficial.\n\n'
              'The old man lived in poverty, wearing a garment woven from bark, tied around his waist with strong plant fibers. He subsisted on fruits and herbs he found in the woods and on the mountain. Even after fasting for two days and nearly becoming a skeleton, he would continue to fast for a third and even a fourth day. He lived as a true hermit, speaking only to Brahma, the Creator, and to those who came to him seeking guidance.\n\n'
              'However, the other hermits, many of whom did not lead pious lives, grew jealous of the way people preferred the kindly, simple man to themselves. In their irrational jealousy, they tormented the gentle, gray-haired hermit in various evil ways. Eventually, the poor old man could no longer leave his cave without being pelted by rotten fruit or struck by stones thrown by the other hermits.\n\n'
              'This torment continued for a long time, yet the old hermit did not complain about his fate nor did he protest against the harsh treatment from his peers. He never sought help from any of the gods or from Brahma, the Creator.\n\n'
              'During this time, no waru trees grew on the holy mountain; it was barren except for great stones, cleft by deep fissures and caves, with the nearest village far away. Consequently, the villagers were unaware of the hardships the poor old hermit endured.\n\n'
              'One day, driven by hunger after fasting for two days, the hermit ventured out of his cave to search for food. While he was weakly walking along a ravine, some of the other hermits spotted him. At a signal from one of the most villainous, they attacked the pious man and pushed him toward the edge of the ravine, intending to throw him onto the sharp, pointed stones below.\n\n'
              'Realizing that his enemies intended to kill him, the hermit prayed fervently to Brahma, asking for a sign or something that might save him from his enemies. Even as he prayed, an enormous snake fell at the feet of the hermits. Initially frightened, they quickly dismissed their fear, saying, "Oh, it\'s just a snake! What do we have to fear from it? If it’s poisonous, it can’t harm us—we\'re holy men!" With that, they grabbed the old hermit and pushed him closer to the edge of the cliff.\n\n'
              'In that moment, the snake—sent by Brahma—raised its head and planted its tail in the loose earth, standing upright between the hermit and his attackers. The hermits recoiled in astonishment as they witnessed the snake transform into a tree. Its head split into many branches, and each drop of the snake\'s venom turned into thick leaves.\n\n'
              'Realizing the power of the wise old hermit, the other hermits bowed low before him. One of them rose and cut a branch from the newly formed tree, fashioning it into a lance shaft which he presented to Kawitjaksana, saying, "May the lance that this shaft shall hold kill us all if we ever forget to honor you as the bravest, wisest, and mightiest of hermits!"\n\n'
              'As the man spoke these words, another miracle occurred. As soon as the old hermit grasped the shaft, it transformed into a finely pointed lance. The other hermits bowed even lower in homage, declaring, "Now we see that you are high above us, truly one of Brahma’s chosen!"\n\n'
              'Even now, after all this time, when new waru trees rise from the earth on the holy mountain, people greet their appearance with joy, knowing they have grown from the snake that Brahma sent to save Kawitjaksana\'s life. This is why the Javanese believe that lance shafts made from waru wanggi wood can achieve remarkable things, especially in battle. Whoever carries a lance with a waru wood shaft will surely overcome all their enemies.',
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
        'Behind a certain village in Java, there stands a mountain where a tree called the waru grows. The natives cut lance shafts from the wood of this tree, which holds great esteem among the Javanese. They believe that a lance with a shaft made of waru wood will ensure victory over their enemies. The origin of this belief is found in a very old story.\n\n'
        'The name of the mountain means "fragrant," signifying a place with an air of holiness. People regard it as holy because many hermits dwell in its caverns, some of whom possess supernatural powers. Among these hermits was a very old, pious, and wise man known as Kawitjaksana, which means "hermit full of wisdom." People traveled from distant places to hear his words and seek his advice, which was always beneficial.\n\n'
        'The old man lived in poverty, wearing a garment woven from bark, tied around his waist with strong plant fibers. He subsisted on fruits and herbs he found in the woods and on the mountain. Even after fasting for two days and nearly becoming a skeleton, he would continue to fast for a third and even a fourth day. He lived as a true hermit, speaking only to Brahma, the Creator, and to those who came to him seeking guidance.\n\n'
        'However, the other hermits, many of whom did not lead pious lives, grew jealous of the way people preferred the kindly, simple man to themselves. In their irrational jealousy, they tormented the gentle, gray-haired hermit in various evil ways. Eventually, the poor old man could no longer leave his cave without being pelted by rotten fruit or struck by stones thrown by the other hermits.\n\n'
        'This torment continued for a long time, yet the old hermit did not complain about his fate nor did he protest against the harsh treatment from his peers. He never sought help from any of the gods or from Brahma, the Creator.\n\n'
        'During this time, no waru trees grew on the holy mountain; it was barren except for great stones, cleft by deep fissures and caves, with the nearest village far away. Consequently, the villagers were unaware of the hardships the poor old hermit endured.\n\n'
        'One day, driven by hunger after fasting for two days, the hermit ventured out of his cave to search for food. While he was weakly walking along a ravine, some of the other hermits spotted him. At a signal from one of the most villainous, they attacked the pious man and pushed him toward the edge of the ravine, intending to throw him onto the sharp, pointed stones below.\n\n'
        'Realizing that his enemies intended to kill him, the hermit prayed fervently to Brahma, asking for a sign or something that might save him from his enemies. Even as he prayed, an enormous snake fell at the feet of the hermits. Initially frightened, they quickly dismissed their fear, saying, "Oh, it\'s just a snake! What do we have to fear from it? If it’s poisonous, it can’t harm us—we\'re holy men!" With that, they grabbed the old hermit and pushed him closer to the edge of the cliff.\n\n'
        'In that moment, the snake—sent by Brahma—raised its head and planted its tail in the loose earth, standing upright between the hermit and his attackers. The hermits recoiled in astonishment as they witnessed the snake transform into a tree. Its head split into many branches, and each drop of the snake\'s venom turned into thick leaves.\n\n'
        'Realizing the power of the wise old hermit, the other hermits bowed low before him. One of them rose and cut a branch from the newly formed tree, fashioning it into a lance shaft which he presented to Kawitjaksana, saying, "May the lance that this shaft shall hold kill us all if we ever forget to honor you as the bravest, wisest, and mightiest of hermits!"\n\n'
        'As the man spoke these words, another miracle occurred. As soon as the old hermit grasped the shaft, it transformed into a finely pointed lance. The other hermits bowed even lower in homage, declaring, "Now we see that you are high above us, truly one of Brahma’s chosen!"\n\n'
        'Even now, after all this time, when new waru trees rise from the earth on the holy mountain, people greet their appearance with joy, knowing they have grown from the snake that Brahma sent to save Kawitjaksana\'s life. This is why the Javanese believe that lance shafts made from waru wanggi wood can achieve remarkable things, especially in battle. Whoever carries a lance with a waru wood shaft will surely overcome all their enemies.');
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
          Navigator.pushNamed(context, '/intermediate/waru/quiz');
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
