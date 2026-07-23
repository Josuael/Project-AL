import 'package:flutter/material.dart';

class KarangReadingPage extends StatefulWidget {
  final String courseTitle;

  const KarangReadingPage({super.key, required this.courseTitle});

  @override
  State<StatefulWidget> createState() => _ReadingPage();
}

class _ReadingPage extends State<KarangReadingPage> {
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
              '/hard/karang/introduction'); // Arahkan ke halaman Introduction
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
              'In the southern part of the province of Bantam lies the mountain **range** called the Kendang, where the Baduwi tribe **settled** long, long ago and lived far away from other people. The Baduwis still practiced the religion of their **forefathers** and were not yet followers of Mohammed. The Baduwis were **brave** and honest, for if they did anything **wicked**f, they knew that they would never reach the White Place, where all those who died went to find **blessed** rest and **eternal** **happiness**.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Now the White Place, according to the Baduwis, did not lie under the earth, nor was it in the heavens. It was not far from their own village and was a place with many **terraces** where **basalt** stones of all sizes and shapes were to be found. These stones lay everywhere, even in the middle of the **dense** forest where the White Place was. In these stones, the Baduwis saw their Gods, and so they worshiped and prayed to them, and brought **offerings** of rice and flowers there.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'It **seldom** happened that a Baduwi did anything wrong in the eyes of his **tribesmen**. But if such a thing did happen, his soul did not reach the holy White Place but was taken by the **fire-spirits** to the group of little volcanoes which lie in the northern part of Bantam, where the highest mountain is called the Karang.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'These volcanoes were not always there. How they came into being is told in this legend. Hanomat was the king of the monkeys and a son of the great **wind-god**. Sometimes he **wandered** over the earth in the form of an orangutan, and one day he came to visit his people, the monkeys. He came with two great bags of sand slung over his shoulder, for he wanted the monkeys to help him build two little islands in the straits of Sunda. But when he came to the place where the monkeys lived, very tired from carrying his heavy load, he saw, to his surprise, that one of the gods had been there before him and had already built three little islands—Krakatau, Besi, and Dwars-in-den-weg. Hanomat was so angry about this that he **tore** his bags to pieces, and the sand ran out in great waves. The waves of sand **piled** up higher and higher until they formed two big mountains.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'One of these mountains Hanomat called the Karang and the other he called Pulosari. When Pulosari had reached the height of an ordinary mountain, it stayed as it was. But the Karang grew and grew until it was so high that its tip reached into the heavens.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'When the monkeys saw this, they thanked their king, Hanomat, because they thought that he had purposely made the Karang so high to enable them to climb up to the stars.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The mountain was hardly finished before a whole colony of monkeys climbed to the top and began to tease the stars. Yes, finally, they became so impudent that they actually began to bite the little stars!',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The gods in their heaven saw this, and one evening Vishnu said to Brahma, “Look, O Creator, how those naughty children of Hanomat’s are teasing the little stars. Shouldn’t we punish them for this?”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'But Brahma answered, “My dear Vishnu, they will soon be tired of their teasing. Let us watch a little longer and see how it goes.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'So the gods did not punish the monkeys just then. But one evening, when one of the biggest monkeys began to snap at the evening star, and the star shrank behind a cloud in terror, Vishnu said to Brahma, “Look, O great one! Must this go on night after night? Cannot you, who are so mighty, forbid these animals to do what they are doing?”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'And Brahma, the kind-hearted Creator, answered, “The evening star is now beyond their reach. The monkeys cannot do much more harm tonight. Let us therefore wait till morning.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'But the following morning, when day began to break and the morning star was shining beautifully in the heavens, Brahma himself looked out from the gods’ heaven and saw how some of the monkeys were beginning to bite that lovely, brilliant star. The star looked for a cloud where she could hide herself, but she found none, and in terror of the teasing animals, she called out, “Great Brahma, if this teasing doesn’t stop soon, I will not shine in the sky anymore, and neither will any of the other stars!”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'When the evening star and all the other stars, big and little, heard the morning star say this to Brahma, they, too, cried, “No, no, great, mighty Brahma, we will not shine in the sky anymore if this teasing by the monkeys does not stop!”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'So Brahma called to him the favorite of the gods, Lurah Dalam, who by day ruled over the kingdom of Bantam, and ordered him to send Hanomat to him immediately.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“Hanomat,” Lurah Dalam said, when he had found him, “Brahma has commanded me to send you immediately to the gods’ heaven.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“What must I do in the gods’ heaven?” asked Hanomat.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“I think that Brahma wants to give you one of the great scissors to snip off a piece of the mountain so that the monkeys can no longer climb up to the stars,” said Lurah Dalam.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“Do you mean to say that I must cut off a piece of my beautiful mountain?” Hanomat cried. “And where will the piece go?”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“I think it will go into the sea,” answered Lurah Dalam.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“What must I chop up the sea with my mountaintop?” the king of the monkeys cried in anger. “Tell Brahma that if he wants to do that, he can use the three mountains that the gods put down in the Sunda Straits.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'When he heard this impertinent language, Lurah Dalam became angry, too. “Do you mean to say,” he cried, “that you dare tell Brahma what he should do and what he should not do? Go immediately to the gods’ heaven, I tell you, and get the big scissors!”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“I don’t want a piece of my big, beautiful mountain snipped off,” Hanomat mumbled. “My mountain is going to stay as it is…”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“Do you refuse to do what Brahma orders?” asked Lurah Dalam in a terrible voice. “Get the scissors immediately, or I will banish you to the realm of the ghosts.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Then Hanomat knew that, whether he wanted to or not, he must go to the gods’ heaven. Brahma gave him the scissors and said, “Snip off a third of the Karang, so that none of the monkeys can tease the stars anymore.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“And what shall I do with the snipped-off piece, O mighty Brahma?” asked Hanomat.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“First snip it off,” said Brahma. “The rest will take care of itself.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'With the great scissors in his hands, Hanomat returned to the earth. Then he climbed to the top of the Karang and snipped off a third of the mountain. With a thundering noise, the snipped-off part fell and formed, by Brahma’s will, a group of smaller volcanoes. And to these volcanoes go the souls of those Baduwis who have done something **wicked** in their lives.',
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
      case 'range':
        definition = 'Barisan atau kumpulan, biasanya merujuk pada pegunungan.';
        break;
      case 'settled':
        definition = 'Menetap, tinggal di suatu tempat secara permanen.';
        break;
      case 'forefathers':
        definition =
            'Leluhur, nenek moyang atau generasi yang hidup sebelumnya.';
        break;
      case 'brave':
        definition = 'Berani, tidak takut menghadapi bahaya.';
        break;
      case 'wicked':
        definition = 'Jahat, sangat buruk atau tidak baik.';
        break;
      case 'wicked,':
        definition = 'Jahat, sangat buruk atau tidak baik.';
        break;
      case 'eternal':
        definition = 'Abadi, berlangsung selamanya tanpa akhir.';
        break;
      case 'blessed':
        definition = 'Diberkati, penuh kebahagiaan atau kedamaian.';
        break;
      case 'happiness.':
        definition = 'Kebahagiaan, perasaan senang dan puas.';
        break;
      case 'terraces':
        definition = 'Teras, undakan tanah atau area yang dibuat berjenjang.';
        break;
      case 'basalt':
        definition =
            'Batu basal, jenis batuan keras berwarna gelap yang terbentuk dari lava.';
        break;
      case 'dense':
        definition =
            'Lebat, sangat penuh atau padat, seperti hutan dengan banyak pohon.';
        break;
      case 'offerings':
        definition =
            'Persembahan, sesuatu yang diberikan kepada Tuhan atau Dewa sebagai tanda penghormatan.';
        break;
      case 'seldom':
        definition = 'Jarang, hampir tidak pernah terjadi.';
        break;
      case 'tribesmen.':
        definition =
            'Anggota suku, orang-orang yang termasuk dalam kelompok suku tertentu.';
        break;
      case 'fire-spirits':
        definition =
            'Roh api, makhluk spiritual yang dikaitkan dengan api dalam mitologi atau kepercayaan.';
        break;
      case 'wind-god.':
        definition =
            'Dewa angin, tokoh mitologi yang dianggap menguasai angin.';
        break;
      case 'wandered':
        definition = 'Berkelana, berjalan tanpa tujuan tertentu.';
        break;
      case 'tore':
        definition =
            'Merobek, menghancurkan dengan cara menarik atau mencabik.';
        break;
      case 'piled':
        definition = 'Menumpuk, mengumpulkan sesuatu menjadi tumpukan tinggi.';
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
          Navigator.pushNamed(context, '/hard/karang/listening');
        },
        child: const Text('Next'),
      ),
    );
  }
}
