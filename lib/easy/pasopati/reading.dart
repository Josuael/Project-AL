import 'package:flutter/material.dart';

class PasopatiReadingPage extends StatefulWidget {
  final String courseTitle;

  const PasopatiReadingPage({super.key, required this.courseTitle});

  @override
  State<StatefulWidget> createState() => _ReadingPage();
}

class _ReadingPage extends State<PasopatiReadingPage> {
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
              '/easy/pasopati/introduction'); // Arahkan ke halaman Introduction
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
              'In the days of the Hindus, before Mohammedanism had come to Java, there lived on the island a king whose name was Jamojojo. He was so **warlike** that he counted his battles by the hundreds. He was always in the **forefront**, armed with a sort of **poniard** which had something of the shape of a kris, but which wasn’t a kris because that weapon had not yet been devised. The king had never been **wounded**, and his people whispered that it was because of his weapon, which he always carried in his right hand. It had been given to him by a **tapa**, a hermit.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '"Take good care of it," the old **hermit** had said at the time, "for if someone ever takes away your weapon, your power will go with it!"',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'This known also to the king of the giants, one of Jamojojo\'s greatst enemies. One night, when the ggreat warrior lay sleeping after a **victorious** battle, the king of the giants, with his **courtiers** and a number of **servants**, suddenly came upon him. The weapon, which the king still held in his hand, was taken from him, and he himself was **bound** and carried to the one of the underground **caverns** in the giant\'s palace.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Now the king, who had been **accustomed** to liberty, was extremely unhappy. Seperated from his beloved wife, he refused all food and drink which was brought to him, and he **seldom** slept. But on a certain ight, as the moon was showing through the cracks of the **dungeon**, he fell into a deep sleep. And in his **slumber**, there appeared an angel who said to him.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '"Jamojojo, they have taken away your weapon which the old **tapa** gave you. But in its place, you shall receive another weapon, and in a most unusual manner.."',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Just as the king was about to ask, "In what manner?" the angel disappeared. Jamojojo thought long over this amazing dream, until one night something even stranger **occured**. This time it was not an angel who appeared to him in his dream, but Durga, the beautiful Goddess who had once **conquered** the buffaloes. Durga said to him:',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '"Jamojojo, someday you shall have a son who will bring you good fortune. Through him, you shall **acquire** a weapon that is better and more beautiful and shaped differently from the **poniard** which the king of the giants has taken from you"',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The king wanted to question her, but the Goddess suddenly disappeared.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Jamojojo did not understand anything of his strange dreams. Night and day he pondered over them, wondering about the new weapon which he was to receive as soon as a soon was born to him. Because of all his **pondering**, and because he did not touch the food and drink set before him, Jamojojo grew thin and ill. And the king of the iants, who was not so wicked after all, promised himself that as soon as he had won a battle over one of his enemies, he would give Jamojojo his freedom. This happened sooner than the king of the giants expected. Jamojojo was released his prison and was **permitted** to return to his queen and his kingdom, a free man-but on one condition: as **ransom**, he must send to the giant all the weapons in his domain. "Because," said the giant, "you must never fight any wars again. There must be peace in your kingdom from now on."',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'When Jamojojo heard this condition, he bowed his head before his **conqueror** and promised that, as soon as he reached his own country, all weapons should be delivered to the king of the giants. This promise cost the arrior a mighty **struggle**, but he loved his fredoom above all.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'And so it happened that every one of his subjects, from the **lowliest** Javanese to the highest noble, brought his weapons to Jamojojo, and they were delivered by the thousands to the palace of the king of the giants.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The last of his subjects to come before him was an old man, the only Mohammedan in Java,, who had come from a land over the sea. His name was Pasopati. He laid his weapon at the king\'s feet and spoke almost the **selfsame** words of **prophecy** that Jamojojo had heard several times during his **imprisonment**.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '"My king," said the old man, "we have all had to deliver our weapons to the king of the giants. But fear not, because soon thou shalt have another weapon, better, more beautiful, and entirely different in shape from all other weapons in existence. It is Allah who has so ordained."',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '"Perhaps he himself is Allah," **mocked** one of the nobles, "Perhaps he has still another weapon hidden!"',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The king had the same thought. "We will not let ourselves he decived by you!" he cried. "Perhaps you have kept back another weapon that you will want tpp sell us later! Come, bring it here, or else-"',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'But Pasopati shook his head at this **accusation**. He said that he did not **possess** any other weapon, and that Allah was not a person and did not live on the earth, but in the heavens.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'No one believed him. People called him a **deceiver**, and he was thrown into one of the underground **dungeons** of the palace.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'And soon, no one thought any more of the poor old man in his dark, **damp** cell-until the day a son wa born to the queen. The little prince, who was a wonderfully **sturdy** and handsome child, brought something very strange into the world with him.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'It was a little golden kris which **hung** at his left side on a golden cord.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'While the king, the queen, and all the nobles were lost in **amazement** over this, they suddenly remembered the **prophecy** which the king had heard in his dreams. They remembered, too, the last **prophecy** which had been spoken by Pasopati, who at that very moment was **imprisoned** in the underground **dungeon**.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '"Take Pasopati out of prison immediately," ordered the king, "and bring him here."',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'But when the grey-haired old man was brought in and wanted to bow down before his king, he was so weak that he fell t thhe ground, and his eyes closed. Paasopati felt that Allah was calling him, that he was dying... But still, he lifted his eyelids once more and looked toward the little prince who lay beside him on his silken cushion.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'It is Allah\'s will," he whispered, his voice growing weaker with every word. "He came into the world with the golden weapon, the weapon that Allah **bestowed** on him. But not for fighting shall this weapon serve..." And then his dimming eyes turned toward the king. "My lord, thou and thy people shall make your weapons like this one, and ye shall carry them as a sign that someday ye shall submit to Allah\'s will. Because Allah is great and mighty and everlastingly good. Learn to know him!"',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Hardly had Passopati said this when he closed his eyes forever.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'And in his sorrow that he had punished the old man who hwas without guilt, the king called the weapon which his son had brought into the world, "Pasopati."',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'And that is what the Javanese call the kirs to this day, the kris which is made, so they say, like the one with which the young prince came into the world.',
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
      case 'warlike':
        definition = 'Suka perang';
        break;
      case 'forefront,':
        definition = 'Posisi terdepan';
        break;
      case 'poniard':
        definition = 'Belati kecil';
        break;
      case 'wounded,':
        definition = 'Terluka';
        break;
      case 'tapa':
        definition = 'Meditasi';
        break;
      case 'tapa,':
        definition = 'Meditasi';
        break;
      case 'victorious':
        definition = 'Menang';
        break;
      case 'courtiers':
        definition = 'Pelayan istana';
        break;
      case 'servants,':
        definition = 'Pelayan';
        break;
      case 'bound':
        definition = 'Terikat';
        break;
      case 'caverns':
        definition = 'Gua besar';
        break;
      case 'accustomed':
        definition = 'Terbiasa';
        break;
      case 'seldom':
        definition = 'Jarang';
        break;
      case 'slumber,':
        definition = 'Tidur nyenyak';
        break;
      case 'occured.':
        definition = 'Terjadi';
        break;
      case 'conquered':
        definition = 'Ditaklukan';
        break;
      case 'acquire':
        definition = 'Memperoleh';
        break;
      case 'pondering,':
        definition = 'Memperoleh';
        break;
      case 'permitted':
        definition = 'Diizinkan';
        break;
      case 'ransom,':
        definition = 'Tebusan';
        break;
      case 'conqueror':
        definition = 'Penakluk';
        break;
      case 'struggle,':
        definition = 'Perjuangan';
        break;
      case 'lowliest':
        definition = 'Paling rendah';
        break;
      case 'selfsame':
        definition = 'Persis sama';
        break;
      case 'prophecy':
        definition = 'Ramalan';
        break;
      case 'imprisonment':
        definition = 'Pemenjaraan';
        break;
      case 'mocked':
        definition = 'Diejek';
        break;
      case 'accusation.':
        definition = 'Tuduhan';
        break;
      case 'possess':
        definition = 'Memiliki';
        break;
      case 'deceiver,':
        definition = 'Penipu';
        break;
      case 'dungeons':
        definition = 'Penjara bawah tanah';
        break;
      case 'dungeon':
        definition = 'Penjara bawah tanah';
        break;
      case 'damp':
        definition = 'Lembap';
        break;
      case 'sturdy':
        definition = 'Kokoh';
        break;
      case 'hung':
        definition = 'Digantung';
        break;
      case 'amazement':
        definition = 'Kekaguman';
        break;
      case 'imprisoned':
        definition = 'Dipenjara';
        break;
      case 'bestowed':
        definition = 'Diberikan';
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
          Navigator.pushNamed(context, '/easy/pasopati/listening');
        },
        child: const Text('Next'),
      ),
    );
  }
}
