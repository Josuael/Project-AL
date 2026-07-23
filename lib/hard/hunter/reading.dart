import 'package:flutter/material.dart';

class HunterReadingPage extends StatefulWidget {
  final String courseTitle;

  const HunterReadingPage({super.key, required this.courseTitle});

  @override
  State<StatefulWidget> createState() => _ReadingPage();
}

class _ReadingPage extends State<HunterReadingPage> {
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
              '/hard/hunter/introduction'); // Arahkan ke halaman Introduction
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
              'A young man named Awang Durahman lived in a small village near a great forest. He liked nothing better than to **wander** in the woods, looking for game, and dreaming. One day, when the sun was hot, he took his **spear** and went into the forest where it was cool and quiet. As he walked, he talked to himself: “Look at me! I am the **mightiest** **hunter** in the land! No animal can hear me coming, for I walk so **softly**!”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'With that, he nearly **stumbled** upon a small deer which lay in the shadows, sound asleep. Awang looked down at the deer. “It is too **defenseless** to kill. I will take out my tobacco and my pipe and smoke a bit.” He filled his pipe and hung his tobacco pouch on the **antlers** of the sleeping deer. Then he **leaned** against a tree, with his **spear** beside him, and thought, “This deer, when I kill it, will make a great deal of meat. I will have **plenty** for my mother, my father, and myself. I will sell the rest and have much money. What shall I do with the money?”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'He thought a while longer and smiled to himself. “Why, I will buy some ducks, of course! There will be so many ducks that they will make a loud **noise** in the village and eat all the **grain**. People will be angry and will ask whose ducks they are. My mother will say, ‘They belong to Awang Durahman,’ and people will say, ‘He must be a rich man to have so many ducks.’”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Awang went on **daydreaming**. “Then I will sell the ducks and buy some goats. There will be many goats and they will eat the **crops** in the field. ‘Whose goats are these?’ people will ask, and my mother will say, ‘They are Awang Durahman’s.’ Then the people will cry, ‘He must be rich to have so many goats.’”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'He thought for a while. “After some time, I will sell the goats, I think, and buy some buffaloes. They will be big and strong; they will work my fields for me. When I milk them, they will give much milk, and people will say, ‘Whose buffaloes are these?’ My mother will answer, ‘They are Awang Durahman’s buffaloes,’ and people will cry, ‘He must be very rich to have so many buffaloes that give so much milk.’”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'A smile spread across Awang’s face as he **leaned** against the tree. He sucked happily on his pipe and watched the smoke spiral into the quiet air. “But after a time, I will sell the buffaloes and buy some elephants. They will be strong—so strong that they will **knock down** the bamboo houses of my neighbors, **trample** their fields, and **wade** in the stream. And people will cry, ‘Whose elephants are these that have come to our village?’ My mother will say, ‘Do you not know that they belong to my son, Awang Durahman?’ And the villagers will cry, ‘But he must be **enormously** rich to have so many elephants!’”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Awang blew another **puff** of smoke and waited till it vanished toward the sky, just barely visible between the treetops. “Then, I think, I will sell my elephants to the Rajah. He will give me his daughter in marriage, and with her, I will sail to **distant** islands—to Java, Bali, Borneo, Ambon, and Celebes. In my fine ship, I will sail wherever I please, with my beautiful young wife, the Rajah’s daughter, beside me.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'In the **waving** of the leaves, he saw the motion of the waves, and his body **swayed** as if in the motion of a boat. He **squinted** his eyes, looking toward far **horizons**. “With my beautiful wife beside me,” he repeated, “I will sit on the deck while my **servants** **fan** me with **palm fronds** and bring me **cooling drinks**. I will play games while my wife sleeps and my child Hassan **crawls** about the deck.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“Very well,” said the **spokesman**, “but be quick about it. Go and tell him that the Rajah of All the Tigers demands food in great **quantities**, which we shall **specify**. It must be given to us at once, or our rajah will send his **army** to destroy you. What is more,” he said, stepping forward and nearly knocking down the tiny mouse-deer, “give him this, as a **token** of our rajah’s **might**.” He drew out a tiger’s **whisker** and gave it to the mouse-deer.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'He could see Hassan’s small brown body crawling over the **sloping** deck. He could feel the movement of the ship, rising, falling, rising— “Heh!” he cried loudly, and **leaped** into the air. “Hassan has fallen into the sea! Hassan, my child, has fallen into the sea! Save him, you, Achmed, you, Kerto!”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'His **spear** fell to the ground, and the deer sprang up in fright and darted into the deep forest, the tobacco pouch still dangling from its **antlers**. Awang shook his head and rubbed a hand across his eyes. He picked up his **spear** and walked slowly down the forest path. “Aie!” he moaned sadly. “I was rich, and now I am poor! Wait till I come upon that wretched deer! He has made off with my ship, my wife, my child, and my tobacco pouch! Aie, Aie!””',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'It was cool in the forest, sweet-smelling, and quiet. The path was soft under his feet, and the sun, through the tall trees, made a golden light between the shadows. Awang walked in happy silence for a while. The wind began to rise. It sang a song to him. He listened, stopping in his walk.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“What is it the wind says?” he asked himself and listened again. A smile broke over his face. “The wind says, ‘Whose tobacco pouch is this?’ and the wind answers itself. ‘Why, it is the pouch of Awang Durahman, the mighty hunter!’”',
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
      case 'wander':
        definition = 'Berkelana, berjalan tanpa tujuan tertentu.';
        break;
      case 'spear':
        definition =
            'Tombak, senjata panjang dengan ujung tajam yang digunakan untuk menusuk.';
        break;
      case 'mightiest':
        definition = 'Paling kuat atau paling hebat.';
        break;
      case 'hunter':
        definition = 'Pemburu, orang yang mencari atau berburu hewan.';
        break;
      case 'softly!':
        definition = 'Dengan lembut, pelan-pelan, tanpa suara keras.';
        break;
      case 'stumbled':
        definition = 'Terjatuh atau tersandung karena tidak sengaja.';
        break;
      case 'defenseless':
        definition = 'Tidak bisa membela diri, tidak berdaya.';
        break;
      case 'antlers':
        definition =
            'Tanduk rusa, cabang-cabang keras yang tumbuh di kepala rusa.';
        break;
      case 'antlers.':
        definition =
            'Tanduk rusa, cabang-cabang keras yang tumbuh di kepala rusa.';
        break;
      case 'leaned':
        definition = 'Bersandar atau membungkukkan tubuh ke sesuatu.';
        break;
      case 'plenty':
        definition = 'Banyak, cukup banyak.';
        break;
      case 'noise':
        definition = 'Suara bising, gangguan suara yang mengganggu ketenangan.';
        break;
      case 'grain.':
        definition =
            'Bijian, bagian tanaman yang digunakan sebagai makanan, seperti beras, jagung, atau gandum.';
        break;
      case 'daydreaming.':
        definition =
            'Melamun, berpikir atau berkhayal tentang sesuatu yang tidak nyata.';
        break;
      case 'crops':
        definition =
            'Tanaman yang dibudidayakan, seperti padi atau sayuran, yang dipanen untuk dimakan atau dijual.';
        break;
      case 'knock down':
        definition =
            'Merobohkan, membuat sesuatu jatuh atau runtuh dengan kekuatan.';
        break;
      case 'trample':
        definition =
            'Menginjak-injak, berjalan di atas sesuatu dengan berat, biasanya merusak atau menghancurkan.';
        break;
      case 'wade':
        definition =
            'Menyusuri, berjalan melalui air dengan langkah-langkah kecil, biasanya di sungai atau genangan air.';
        break;
      case 'enormously':
        definition =
            'Sangat besar, dalam jumlah atau ukuran yang sangat besar.';
        break;
      case 'puff':
        definition =
            'Hisapan, uap atau udara yang dikeluarkan saat seseorang menghirup atau menghembuskan asap, biasanya dari rokok atau pipa.';
        break;
      case 'distant':
        definition = 'Jauh, berada pada jarak yang jauh.';
        break;
      case 'waving':
        definition = 'Bergoyang, bergerak maju mundur seperti gelombang.';
        break;
      case 'swayed':
        definition = 'Terayun, bergerak dengan lembut ke kiri dan ke kanan.';
        break;
      case 'squinted':
        definition =
            'Menciutkan mata, melihat dengan mata setengah tertutup, biasanya karena cahaya yang terlalu terang atau fokus pada objek yang jauh.';
        break;
      case 'horizons.':
        definition =
            'Garis cakrawala, batas yang tampak antara bumi dan langit.';
        break;
      case 'servants':
        definition =
            'Pelayan, orang yang bekerja untuk melayani kebutuhan orang lain.';
        break;
      case 'fan':
        definition =
            'Menyapu udara, menggerakkan udara untuk memberi rasa sejuk dengan menggunakan kipas atau tangan.';
        break;
      case 'palm fronds':
        definition = 'Daun palem, daun besar dari pohon palem.';
        break;
      case 'cooling drinks.':
        definition =
            'Minuman dingin, minuman yang disiapkan untuk menyegarkan tubuh.';
        break;
      case 'crawls':
        definition =
            'Merangkak, bergerak dengan cara merangkak menggunakan tangan dan lutut.';
        break;
      case 'sloping':
        definition = 'Miring, condong ke satu sisi, tidak datar.';
        break;
      case 'leaped':
        definition =
            'Melompat, bergerak cepat ke atas atau ke depan dengan dorongan.';
        break;
      default:
        definition = 'Definisi tidak ditemukan.';
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
          Navigator.pushNamed(context, '/hard/hunter/listening');
        },
        child: const Text('Next'),
      ),
    );
  }
}
