import 'package:flutter/material.dart';

class SawahReadingPage extends StatefulWidget {
  final String courseTitle;

  const SawahReadingPage({super.key, required this.courseTitle});

  @override
  State<StatefulWidget> createState() => _ReadingPage();
}

class _ReadingPage extends State<SawahReadingPage> {
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
              '/intermediate/sawah/introduction'); // Arahkan ke halaman Introduction
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
              'A starving boy went **wearily** from village to village. His name was Dongso, and he had been dismissed by a rich widow for whom he had worked, because the harvest had been so poor. The widow was known throughout the land as the owner of the most fruitful acres, but after Dongso came, the harvest had been so meager that he alone ate more rice than the fields produced. It happened not once, but twice. The widow herself had seen how well Dongso had prepared the sawah (rice field) and tended the young rice shoots, but when they had grown tall and were ready to be harvested, the **stalks** were empty of kernels and hung limp in the sun.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'After the second harvest, the village people began to whisper that the young man might be a bad spirit. Perhaps he had been sent to earth by Allah to punish the widow because she was so stingy and made such meager offerings to the village spirit and the sawah spirit.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The widow, of course, heard these whisperings, and in anger, she dismissed Dongso wihtout paying him.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Weak with hunger, Dongso came one evening to the outskirts of a village and knocked at the door of the first house he saw. It was a little hut in the midst of a small sawah owned by a poor old woman, Randa Derma. When Dongso knocked, shee opened the door to him, and he fell across the **threshold**.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '"Please," he said feebly, "give me a handful of rice. I am starving."',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '"Why do you have to beg?" she asked him. "You look strong, abd you are yyoung. Why don\'t youu earn your rice? Why don\'t you work for your food?"',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'But she was a good-hearted woman, and she pulled her unexpected guest into the room without waiting for his answer. She set rice and coffee in front of him. "Eat and drink, my son," she said. "And then tell me why you beg rather than work."',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The boy began to eat without a word, trying to make up for the many days he had gone hungry. When at last he was satisfied, he told ht eold woman his story.. "I did my best," he said. "I worked hard all the time I took care of the widow\'s sawahs. And truly I could not help it-it was not my fault that the ears were almost always empty. I think." he said slowly, "it was because she did not make offerings to the protecting spirits, and they were punishing her. And how could I force them to make the ears full of grain?"',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '"No, of course you couldn\'t," the old woman agreed.. "But if you will stay with me and work my little sawa, I will give you one-fifth of the harvest yield. The trouble is, I have no buffalo. But the field isn\'t very big..."',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '"It won\'t matter," Dongso said. His eyes shone with gratitude for her offer. "I\'ll do my best for you."',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Early the next morning, he startedd for the sawah with only a spade. He turned the earth as if he had a fine plow and a strong buffalo working for him. When the time came for the sowing, he did that too, wth speed and skill. Now he must wait with patience for the ripening. Then he would be able to harvest full, fine ears of rice! It was almost as if his wishes were coming true, for the rice **stalks** grew tall and straight,, and the ears turned a beautiful golden yellow.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'But then the worst happened-the same thing that had happened when he was working in the fields of the rich widow. The fine-looking **stalks** carried only empty earrs, with not a grain of rice in them! He asked himsself in despair. "Can it be that this woman, too, has made no offering to the spirts? Or can be that I am the one wh brings bad luck to people?"',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'He couldn\'t bear to tell the old woman what was troubling him. She would find yout for herself soon enough when she went into the field for the harvest',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'As the day drew near, Dongso grew sadder and sadder. The night before the harvest, he couldn\'t sleep a wink. He lay on his mat, **tossing** from side to side, thinking of the empty ears of rice in the fieldd and how unhappy the old woman would be. The more he thought about it, the more he felt that he could not face her disappointment when she opened the ears of rice that had been cut. Very early, long before sunup, he would leave the village. He would steal away as he had come and beg from door to door until he found work again.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'As quietly as a mouse, he crept out of the hut the next morning and started for the road. But before he left the village for good he had to look once more at the little sawah where he had labored so long and faithfully. Walking sadly between the tall **stalks**, he looked again at the golden-yellow, empty ears. **Idly**, he **plucked** one off and opened it. As he had thought, there were no rice grains in it.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Then his mouth fell open, and he looked again, hardly believing what he saw. Ther were no grans of rice, but there were grains of gold-pure, glittering gold! He was **dazed** with astonishment. This couldn\'t be. Maaybe in one ar, but surely not-Dongso picked another one, and still another one, and yet another one, and each ear was filled with kernels of gold.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'He ran back to the little hut and found the old woman busy with her weaving. She looked up at him in astonishment. "Why are you so happy, Dongso?"',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Dongso almost told her. But he wanted her to see the amazing sight herself. He wanted her to find the kernels of golds as he had found them. So he said, "Because today we are going to give a wonderful harvest feast, Randa Derma!"',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The old woman\'s wrinkled face puckered sadly when he said that. "No, Dongso," she said with a sigh. "I\'m sorry, but we can\'t do that. We can only make a simple meal. I spent the last of my money on offerings to the spirits of the village and the sawah so that they might bless thhe harvest..."',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '"And so they have!" he shouted. "Wait till you see how they have blessed the harvest!" He took her by the hand and led her to the sawah. The old woman stumbled in her haste to follow his quick steps as he hurried her to the plae where he had made the amazing discovery.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Dongso tore off a **stalk** and gave it to her. "Look inside, Little Mother," he urged, and he watched as she opened the ear and found the golden kernels. He laughed when she shierked with joy. "What did I tell you? What did I tell you?',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'But the old woman pulled herself together quickly. "Now Allah be praised," she said, bowing her head. "My little rice field has brought forth more that a hundered great sawahs could bring forth. Allah be praised!"',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'She had promised Dongso a fifth the harvest, and she gave him a fifth off the harvest. Now he was rich. He could buy himself a ssawah, he could buy buffaloes-as many as he needed. as many as he wanted. But dongso bought neither a rice field nor buffaloes. He was faithful to the old woman who had befriended him, and he took care of the many spreading sawahs she bought with the same **zeal** that he had taken care of her tiny sawah. And he did to others who came to help him as she had done to him-he gave them one-fifth of the crop of the lush acres.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'It has been so from that day to this: One-fifth of each sawah\'s harvest is divided among the helpers. From that day to this, too, there has never been want or poverty in that district. The people of Derma have lived in peace and plent all these years.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'That\'s what the village was named-Derma, after the old woman who hhad befriended Dongso and who had been so poor that she could not even offer a harvest feast. But the Javanese do not believe the village\'s well-being came from the fruitfulness of the countryside. They believe the good fortnue of the village and its people is due to the lovely tempe Dongso built to the memory of his **benefactor**, after she died, on the very spot where one the little sawah had been.',
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
      case 'wearily':
        definition =
            'Lelah/dengan lelah. Kata ini berarti sangat lelah attau capek setelah bekerja keras atau beraktivitas terlalu lama.';
        break;
      case 'threshold.':
        definition =
            'Ambang pintu. Ambang pintu atau titik permulaan, sering kali merujuk pada batas atau awal dari sesuatu.';
        break;
      case 'Idly,':
        definition =
            'Dengan santai atau tanpa tujuan. Berarti tanpa tujuan atau tanpa usaha yyang jelas, seringkali digunakan ketika seseorang melakukan sesuatu dengan malas atau tanpa motivasi.';
        break;
      case 'stalk':
        definition =
            'Batang (tanaman). Merujuk pada batang tumbuhan, terutama pada tanaman seperti padi, jagung atau bunga.';
        break;
      case 'stalks':
        definition =
            'Batang (tanaman). Merujuk pada batang tumbuhan, terutama pada tanaman seperti padi, jagung atau bunga.';
        break;
      case 'stalks,':
        definition =
            'Batang (tanaman). Merujuk pada batang tumbuhan, terutama pada tanaman seperti padi, jagung atau bunga.';
        break;
      case 'zeal':
        definition =
            'Semangat besar atau antusiasme. Menunjukkan semangat besar atau gairah dalam mengerjakan sesuatu, sering kali dalam pekerjaan atau usaha.  ';
        break;
      case 'plucked':
        definition =
            'Memetik. Tindakan mengambil atau menarik sesuatu, biasanya buah atau bunga, dari tempat tumbuhnya.';
        break;
      case 'benefactor,':
        definition =
            'Dermawan atau orang yang memberikan bantuan. Seseorang yang memberikan bantuan, terutama dalam bentuk uang atau sumber daya, untuk mendukung orang lain atau suatu tujuan.';
        break;
      case 'dazed':
        definition =
            'Bingung atau pusing. Menggambarkan perasaan terkejut atau tidak percaya sering kali akibat dari pengalaman yang tidak terduga.';
        break;
      case 'tossing':
        definition =
            'Berguling-guling atau menggerakan badan kesana kemari. Gerakan tidak tenang di tempat tidur, sering kali karena cemas atau gelisah.';
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
          Navigator.pushNamed(context, '/intermediate/sawah/listening');
        },
        child: const Text('Next'),
      ),
    );
  }
}
