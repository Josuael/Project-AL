import 'package:flutter/material.dart';

class JarsReadingPage extends StatefulWidget {
  final String courseTitle;

  const JarsReadingPage({super.key, required this.courseTitle});

  @override
  State<StatefulWidget> createState() => _ReadingPage();
}

class _ReadingPage extends State<JarsReadingPage> {
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
              // Header
              _buildHeader(context),

              // Judul
              _buildTitle(),

              // Konten
              _buildContent(),

              // Tombol Next
              _buildNextButton(),
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
              '/intermediate/jars/introduction'); // Arahkan ke halaman Introduction
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
        'Reading',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTextWithClickableWords(
              'Rajah Pahit was the son of one of the mightiest rulers of all Jawa. One day he got into a game of dice and lost his money and his costly ornaments of gold, silver, and jewels. The only things he had left were the **heirlooms** he had inherited from his forrebears, and these he had to take to the pawnshop to pay his debts.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Losing his herlooms, many of which had belonged to his father, made the Rajah despair. He was afraid to tell his father what he had done and so, one night, he fled the kingdom with his wife and little two-year-old daughter. He had no idea where to go and wandered from place to place until, weary of foot and weary of heart, he settled down on the slope of Mount Merbabu. There he lived for many years a life of **penance**, praying and fasting, until Brahma took pity on him.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'One evening, Rajah Pahit and his wife and their now-grown daughter, Ruwana, were sitting in front of their hut. As always, the Rajah was softly saying his prayers, his head sunk on his chest.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'When he ceased praying for a moment, his wife said gently, "Why don\'t you rest a while? You have prayed so long. Surely Brahma must hear you soon!"',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The Rajah did not look up as his wife spoke to him. He merely shook his snow-white head. The white hair contrasted strangely with his dark skin. Only his deep-set, briliant eyes showed that he was still a young man.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Now it happened that Brahma, who knows all, kknew that the Rajah Pahit was not a wicked man, but had just given in to a momentary weakness, Brahma thought, I will help him; he has suffered enough. The moon was shining brightly, and it occurred to Brahma to call Kajangka, the ruler of the moon, to hom. "Take something to Rajah Pahit," he said, "that will make him rich again, so that he can get back all he lost in his game of chance."',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Kajangka had no desire to help the people of the earth, but he had to do what Brahma had requested of him. And so, the very next evening, he rode a moonbeam to earth. He set himself down near to the top of Merbabu, on a spot where he could just see the bamboo hut of Rajah Pahit. And as he glanced through an opening in one of the bamboo walls, he saw the lovely Ruwana, a maiden as beautiful and radiant as the sun.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'No sooner had he seen Ruwana than he desired her as his bride. Swiftly he changed himself into a handsome young man, went into the hut, and asked Rajah Pahit to give him his daughter in marriage.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '"I am only a poor **exile**," Rajah Pahit said haughtily, "but, after all, I am not going to give my daughter to someone who is of a lower caste than myself."',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '"I do not belong to a lower caste," Kajangka said. "I have been sent by Brahma. It is his desire that you become rich so that you can buy back all the **heirlooms** that you had to paws. Listen!" He leaned close. "The creator **kneaded** the sun from a pile of clay. Froom what was left over, he **kneaded** the moon. But just besofe he began to knead the moon, I-who had not yet drunk of the life-water and was only a mortal wandering on the earth-took a piece of this clay and buried it in Merbabu, the very mountain on which you\'re living. Now if you will promise to give me your lovely daughter in marriage. I will teach you the art of pottery-making!"',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Rajah Pahit gave his loveely daughter Ruwana to the ruler of the moon, and in return, Kajangka taught him pottery-making. The clayy was **inexhaustible**, it seemed, and of a peculiar whiteness. Kajangka decided that it should be made into big water jars. Rajah Pahit helped him, and he was so clever and quick that he learned pottery-making in one night.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Soon they had made so many water jars that the top of Merbabu and even the tops of some smaller mountains nearby were covered with them.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '"What a quantity of water jars we have!" Kajangka cried to his fatheer-in-law one day. "I think we really tought to bouild a wall around the tops of the mountains, because you never can tell who might see these beautiful water jars and steal them from us."',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '"That\'s a good idea," Rajah Pahit said. "We\'ll begin at once."',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'They started to bouild a bamboo wall on the tops of the mountains so that the water jars would be hidden from view, and only the gods could see them from their heaven.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Three mountain tops had been ringed with walls when suddenly there was a violent thunderstorm, just above Merbabu. Rajah Pahit left his work and fled to his hut, and Kajangka flew to the moon. After a while, when the storm had abated somewhat and the two potters wanted to return to their work, they saw, to their horror, that all the water jars had disappeared from the mountains that had not yet been fenced in at the top.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '"No doubt they flew away because they wer afraid of the lightning," Rajah Pahit surmised. "But where in the world could they be?"',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '"I don\'t know," Kajangka said. "But I do know that this must be a sign from Brahma: He is telling us that all the water jars that remain must be sold. And I must go back to the gods\' heaven, but I will take my wife with me."',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'At first, Rajah Pahit grumbled at that, for he knew how much he would miss his lovely daugther. Butt then he began selling the handsome watter jars, and soon he had so much money that he could buy back his costly herlooms and return to his own kingdom, and his grief over the loss of his daughter lessened. For he knew now that Ruwana had a good life with Kajangka; he knew that because, when the moon was full, he could see her laughing face.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'But what happened to the water jars that disappeared?',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Well, it\'s true that they fled because they were afraid of the lightning. They nott only fled from Jawa, but they flew as far awa as the island of Borneo. There they burieed themselves deep in the dense and ancient forest. Surely, they thought, no mortal could ever find them now.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'However, the legend tells us they were found centuries later by the natives of Borneo. And when the Dyaks learned that these jars had been made of clay ffrom which the sun and the moon had been **kneaded**, they were overjoyed, for they realized that to havea jar of such **supernatural** origin in one\'s house would be a piece of wonderful good fortune. Sickness and evil spirits would be **banished** from the nighborhood of a house containing one of these jars.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'And even today, having a jar of that kind in the house is of the greatest importance. Not only does its presence banish sickness and eevil spirits, but it brings luck at harvest time and in fishing, and it blesses a marriage.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The buying of a water jar, then, is an event to be celebrated. In a house where a new water jar has been acquired, thee is feasting for seven days and seven nights. The Dyak **priestesses** sing and dance. And seven little figures, carved of ironwood, are set up at the doorway and remain there seven months, so that whoever passes by may know that the people who live in that house have brought a new water jar.',
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk membangun teks dengan kata yang bisa diklik
  Widget _buildTextWithClickableWords(String text) {
    final words = text.split(' '); // Pisahkan teks menjadi kata-kata
    return Wrap(
      children: words.map((word) {
        if (word.contains('**')) {
          // Jika kata ada dalam format tebal (**), buat GestureDetector untuk klik
          final cleanWord = word.replaceAll('**', ''); // Hilangkan tanda **
          return GestureDetector(
            onTap: () => _showWordDefinition(context, cleanWord),
            child: Text(
              '$cleanWord ',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          );
        } else {
          return Text(
            '$word ',
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          );
        }
      }).toList(),
    );
  }

  // Pop-up definisi kata
  void _showWordDefinition(BuildContext context, String word) {
    String definition;
    switch (word) {
      case 'heirlooms':
        definition =
            'Barang warisan atau pusaka keluarga yang diwariskan dari generasi ke generasi.';
        break;
      case 'penance,':
        definition =
            'Tindakan atau perbuatan untuk menebus dosa, biasanya berupa berpuasa atau melakukan pengorbanan.';
        break;
      case 'exile,':
        definition =
            'Pengasingan, yaitu keadaan di mana seseorang diusir atau dipaksa tinggal di luar wilayah asalnya.';
        break;
      case 'inexhaustible,':
        definition =
            'Tidak habis-habisnya, sesuatu yang tidak bisa berkurang atau habis meskipun terus digunakan.';
        break;
      case 'supernatural':
        definition =
            'Bersifat luar biasa atau di luar jangkauan kekuatan alam, sering kali dikaitkan dengan kekuatan dewa, roh, atau makhluk gaib.';
        break;
      case 'priestesses':
        definition =
            'Pendeta perempuan, biasanya dalam kepercayaan atau agama tertentu yang menjalankan ritual atau upacara keagamaan.';
        break;
      case 'banished':
        definition =
            'Dibuang atau diusir, khususnya merujuk pada pengusiran atau pembuangan sesuatu.';
        break;
      case 'kneaded':
        definition = 'Menguleni atau membentuk sesuatu dengan tangan.';
        break;
      case 'kneaded,':
        definition = 'Menguleni atau membentuk sesuatu dengan tangan.';
        break;
      default:
        definition = 'No definition available.';
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(word),
          content: Text(definition),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  // Tombol Next
  Widget _buildNextButton() {
    return Positioned(
      left: 259,
      width: 111,
      top: 780,
      height: 36,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/intermediate/hunter/listening');
        },
        child: const Text('Next'),
      ),
    );
  }
}
