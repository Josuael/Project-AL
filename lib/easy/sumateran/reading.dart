import 'package:flutter/material.dart';

class SumatranReadingPage extends StatefulWidget {
  final String courseTitle;

  const SumatranReadingPage({super.key, required this.courseTitle});

  @override
  State<StatefulWidget> createState() => _ReadingPage();
}

class _ReadingPage extends State<SumatranReadingPage> {
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
              '/easy/sumateran/introduction'); // Arahkan ke halaman Introduction
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
              'Hundereds and hundreds of years ago in Sumatra, a little village lay on the bank of a **swift-flowing** river. On the other side of the river was a **dense** forest, and in the center of this forest lived a **tapa** or **hermit**. He was an old man; for many years, his home had been a rocky cave hidden under palm leaves. He had lived on the fruits of the trees and the nearby fields and was friendly with all the animals in the woods, even with the tigers.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Butt it came to pass that there was a bad **drought**. The fruits **withered** on the trees and **shrank** to dry **husks** in the fields. The **hermit** could find nothing to eat, and he couldn\'t possible kill any of his animal friends. So, at las, he made himself a small boat out of a tree **trunk**, **rowed** across the river, and asked the people of thhe little village to give him a handful of rice to still his hunger. They gave him half a coconut shell full of rice, and he thanked them, "Someday I hope to return this rice too you **twofold**," he said.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The man who had handed it to him laughed, "Never mind," he said."That won\'t be necessary." But when the old **hermit** came again to ask for a handful of rice, and when he came still another day for another handful of rice, the villagers began to be **annoyed**. "We can\'t give you any more," they said. "We don\'t havve too much to eat ourselves." And the man who had given him the first half a coconut shell of rice said crossly. "Why don\'t you get a rice field for yoursel, and then return some of the rice you\'ve **borrowed**?"',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The old **hermit** turned and leeft them, still hungry. He sat down the edge of the river and thought of what the man had said to hi. As he sat there, a little boat drew alongside. "Why do you look so pained, old man?" the **helmsman** leaned out to ask.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '"I haven\'t eaten anything since yesterday," the **hermit** answered. "And the people of the village, who have been feeding me for a while, have told e they will not give me any more rice." He sighed/ "They say that I must begin my own paddies. But how shall I find a **suitable** place in the forest to plant? And who will give me the young rie **stalks** to set out? I don\'t have even a single rice grain."',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '"That I can give you," the **helmsman** said. He took up a little bag that lay beside him on the **deck**. "Cut down some trees near your hut and make a **paddy** in the clearing. If you work hard and take good care of the plants, these grains should bring you luck."',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Whithout another word, the man **sprang** into his boat and sailed on. The **hermit** stared at the rice **kernels** so **mysteriously** given to him. He tied them in a palm leaf, **tucked** the leaf in his belt, and **rowed** back to the other **shore**. That very day, he began to cut down trees, although his hunger made him weak. He started with the trees close too his hut and kept on **chopping** until **nightfall**. Each day, he cut down a few more trees until finally, there was an open space big enough to **cultivate** as a rice field. All this time, he lived on herbs and leaves from the trees.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The fallen trees dried quickly in the hot sun, and when the first rains fell, the **hermit** could start **sowing** om the loose earth. The young plans, set in neat rows, grew **rapidly**; the **stalks** reached upward, the ears formed and turned yellow, and sooner than usual, the gain was ready to cut.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'And now the **hermit** found, to his **amazement**, that no matter how much rice he cutt in the **paddy**, it immediately gre again, and there was still the same amount to cut. Hee was never done. **Delighted** that he could give back all the rice he had **borrowed**. and more too, he got into his little boat and **rowed** over the village. He begeed the people to come and see his marvelous **paddy** for themselves. Everyone, he said, should bring a big basket and feel free to fill it with the wonderful rice.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Nobody belived him when he said that no matter how much he cut, new rice grew in its place. Still, they all went across the river, most of them in **hollowed-out** logs, some swimming, some in little boats; but all of them went. However, nobody took a basket because nobody thought the **hermit** was telling the truth.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The villagers followed him to the **paddy**. The **hermit** took his knife and cut the fine rice **stalks**, and instantly, in their place, new ones **sprang** up, just as full of ripe grains. He did this over and iver, moving down the neat rows, almost lost under the **towering**, waving **stalks**. Now that they had seen the miracle with their own eyes, the people hurried back to their village to hunt the biggest containers they could find. They **snatched** up huge baskets woven of bamboo, **enormous** water **vessels**, and any likely-looking thing so that they could bring back as much rice as possible. One man even brought a huge **shed** because he counldn\'t find a basket that he thought was big enough.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '"What are you doing with the **shed**?" the old **hermit** asked in astonishment.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '"I\'m going to fill it with rice, of course," the **greedy** man replied, and he began to scoop up what the **hermit** cut. By the time the **shed** was filled to the top, no one could possible move it dowwn to the river\'s edge. That made the **greedy** man despair, and the **hermit** felt sorry for him. So he wove hhim a stout basket of wood fibers to hold the rice. "Leave the **shed** here," he said, "as an offering to the gods."',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Every day, the village people crossed the swift river in their little boats, walked to the **paddy**, and filled their baskets and **vessels** to **overflowing** with the rice that the old **hermit** cut for them. Finally the **tapa** grew weary. His back hurt and his arm was tired. He threw down his knife and cried, "Oh, stop growing, you **wretched** rice!"',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'No sooner were the words out of his mouth than the beautiful ripe ears off grain **withered** and **sank** into the earth; in their place, in the flash of an eye, **sprang** up the long, sharp blades of the **alang-alang** grass, shooting up foot by foot as he watched, and soon the **paddy** was changed into **wilderness**.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Just as this happened, the villagers returned once more with their baskets and jars and **vessels**. When they saw how to the **paddy** had been transformed, they russhed madly to **shed**, whose roof they could just gimpse above the tall blades of **alang-alang**. They fought their way to the **shed** because they knew it was filled  to the **brim** with rice as an offering to the gods. But when they reached it, their cried filled the air. For the big **shed** and all it contained was now only a **towering** rock!',
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
      case 'swift-flowing':
        definition = 'Mengalir dengan cepat';
        break;
      case 'dense':
        definition = 'Padat atau tebal';
        break;
      case 'hermit':
        definition = 'Pertapa atau orang yang hidup menyendiri';
        break;
      case 'hermit.':
        definition = 'Pertapa atau orang yang hidup menyendiri';
        break;
      case 'drought.':
        definition = 'Kekeringan';
        break;
      case 'withered':
        definition = 'Layu atau mengering';
        break;
      case 'shrank':
        definition = 'Menyusut atau mengecil';
        break;
      case 'husks':
        definition = 'Kulit atau lapisan luar biji-bijian';
        break;
      case 'trunk,':
        definition = 'Batang pohon atau bagasi mobil';
        break;
      case 'rowed':
        definition = 'Mendayung';
        break;
      case 'twofold,':
        definition = 'Dua kali lipat atau dua bagian';
        break;
      case 'annoyed.':
        definition = 'Kesal atau terganggu';
        break;
      case 'borrowed?':
        definition = 'Dipinjam';
        break;
      case 'borrowed,':
        definition = 'Dipinjam';
        break;
      case 'helmsman':
        definition = 'Pengemudi kapal';
        break;
      case 'suitable':
        definition = 'Cocok atau sesuai';
        break;
      case 'deck.':
        definition = 'Geledak kapal atau lantai atas';
        break;
      case 'paddy':
        definition = 'Sawah atau beras sebelum digiling';
        break;
      case 'sprang':
        definition = 'Melompat atau bergerak cepat';
        break;
      case 'kernels':
        definition = 'Bijian atau inti';
        break;
      case 'mysteriously':
        definition = 'Secara misterius atau aneh';
        break;
      case 'tucked':
        definition = 'Dimasukkan atau dilipat rapi';
        break;
      case 'shore.':
        definition = 'Pantai atau tepi';
        break;
      case 'chopping':
        definition = 'Memotong atau mencincang';
        break;
      case 'nightfall.':
        definition = 'Waktu senja atau menjelang malam';
        break;
      case 'cultivate':
        definition = 'Mengolah tanah atau bercocok tanam';
        break;
      case 'sowing':
        definition = 'Menanam benih';
        break;
      case 'rapidly;':
        definition = 'Dengan cepat';
        break;
      case 'amazement,':
        definition = 'Keheranan atau kekaguman';
        break;
      case 'Delighted':
        definition = 'Senang atau gembira';
        break;
      case 'hollowed-out':
        definition = 'Dikeruk hingga berlubang';
        break;
      case 'stalks':
        definition = 'Batang tanaman';
        break;
      case 'towering':
        definition = 'Menjulang tinggi';
        break;
      case 'towering,':
        definition = 'Menjulang tinggi';
        break;
      case 'snatched':
        definition = 'Diraih atau dirampas dengan cepat';
        break;
      case 'enormous':
        definition = 'Sangat besar';
        break;
      case 'vessels':
        definition = 'Kapal atau wadah';
        break;
      case 'vessels.':
        definition = 'Kapal atau wadah';
        break;
      case 'shed':
        definition = 'Gudang kecil atau melepaskan (air mata, daun)';
        break;
      case 'shed,':
        definition = 'Gudang kecil atau melepaskan (air mata, daun)';
        break;
      case 'greedy':
        definition = 'Serakah';
        break;
      case 'overflowing':
        definition = 'Meluap';
        break;
      case 'wretched':
        definition = 'Sengsara atau menyedihkan';
        break;
      case 'sank':
        definition = 'Tenggelam';
        break;
      case 'wilderness':
        definition = 'Alam liar';
        break;
      case 'brim':
        definition = 'Tepi atau penuh hingga meluap';
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
          Navigator.pushNamed(context, '/easy/sumateran/listening');
        },
        child: const Text('Next'),
      ),
    );
  }
}
