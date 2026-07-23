import 'package:flutter/material.dart';

class MountainReadingPage extends StatefulWidget {
  final String courseTitle;

  const MountainReadingPage({super.key, required this.courseTitle});

  @override
  State<StatefulWidget> createState() => _ReadingPage();
}

class _ReadingPage extends State<MountainReadingPage> {
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
              '/intermediate/mountain/introduction'); // Arahkan ke halaman Introduction
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
              'The powerful giant who had ruled over Smeru, Indra\'s holy mountain, ever since the world began had a beautiful daughter whom he loved more than all his other **possesions**. He loved her so much that he watched over her day and night, and kept her hidden from all eyes. But one morning, when he went to make the rounds of his underground realm, as was his custom, his little daughter had a suddden desire to go and see-just onece-how the world outside her father\'s kingdom looked. And so she left the mountain and went upon the earth.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'At first, the strong daylight blinded her eyes so that she could not see; but as she grew accustomed to it, she gazed around her, adn she was **enchanted** with all she saw. She walkes on and on, with her light, quick steps. It was almost as if she floated over the meadowws where goats grazed. WHen she came to a field of grain, she suddenly saw a man standing in front of her. He looked somewhat like her father, but he was younger and hansomer than the old mountain giant. And the young man said to her in a soft and friendly voice, "Who are you?"',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The young girl had never heard any voice except the loud, rumbling one of her father, and she was so charmed with the way the young giant said these few simple words that she told him she was Dewi Juranggga, the beloved only child of the mighty giant of Smeru. She told him, too, that she had left her father\'s realm for the first time, and that everything she had seen this morning seemed so lovely that she woild like to dwell on earth forever, even if she had to give up the **immortality** of the gods which would have been hers. "Are you one of the gods, or are you a giant?" she asked.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '"I am giant\'s son," the young man said, "and I am tthe raksasa, or guardian, of the great temple of the gods. Brahma himself appointed me. My father is also a great and powerful giant; he is almost as mighty as your father. His name is Bromo." The raksasa went on to tell her that he was on his way to search for a wife. The gods had told him that he would find a beautiful young girrl near one of the mountains. "And now I have found her!" he cried happily.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'But Dewi Jurangga looked at him sadly and shook her head. "I can never be your wife," she said. "You see, my father loves me above everything else. He guards me as the light of his eyes, and he will never, never consent that I be the wife of a raksasa, and certainly not of one who is a son of Bromo."',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The raksasa looked at her in astonishment. "Why not?" he asked.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '"Because," the young girl answered simply, "your father, Bromo, has sent **devastating** fires and streams of boiling lava from his mountain to flow over the **fertile** fields that border on our mountain. In one night, he changed them to an arid plain. And that is why my father is an enemy of Bromo."',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '"Nevertheless, I am going to speak to your father," the raksasas said. And that very day, before the sun went down, he went to Indra\'s holy mountain and spoke with the mighty mountain giant, asking if he might have Dewi Jurangga as his wife.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The montain giant roared with rage that a raksasa should dare speak like that to him; and he roared even louder when Dewi Jurangga said that if her father would not consent to their marriage, she would go to his enemy, Bromo, and throw herself into the pool of fire on his mountain.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'But when the mountain giant had reared himself out, he began to fer that, if he refused to let Dewi Jurangga become the raksasa\'s wife, Bromo might be so angry that he would send more fire and lava over hhis **fertile** fields, and that he might also take Dewi Jurangga as a sacrifice if she threw herself into the pool of fire.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'So he said to the raksasa, "Listen to me, favorite of the great Brahma. Many years ago, I promised the gods that my child should be given in marriage only to a being with supernatural powers and strength. No giant\'s son, but a son of the gods, must be her husband. And, in order that I may know if he is really a son of the gods, he must make a sea of sand around my enemy, Bromo, in one night-that is, between the time the sun sets and the time the first cock crows. It must be a sea of sand a thousand feet deep and a thousand feet wide, so that fire cannot harm my fields anymore and so that streams of boiling lava will be quenched in the sand. If you can do that in one night, you may have my daughter as your wife. But if the sea of sand is not finished when the first cock crows, then you shall be turned to stone and you shall remain so for a thousand times a thousand years."',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The raksasa thought about this for a while, and theen he lifted up his head and looked at the lovely face of the giant\'s daughter and said, "I will try to do this, oh great and mighty ruler of Indra\'s holy mountain! Tomorrow evening, when the sun goes down. I will begin my task."',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'And he said to Dewi Jurangga, "Bring me the very biggest batok (half a coconut shell) that you can find, and lay it on the spot where we first met."',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The following evening, shortly before the sun went down, Dewi Jurangga brought the raksasa the batok. "Do your best," she whispered to him. "Show your power, and we shall be happy forever after."',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The raksasa took the batok out of her little hands, and said earnestly, "I will prove my self, Kembang Manis (lovely flower)."',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'And as soon as the sun had disappeared below the horizon, he began to fill the batok with sand. He threw the sand into piled that became mounds, and mounds that became hills. He scooped up the sand around Mount Bromo, nor did he pay nay attention when Bromo shouted at him and threw red-hot rocks of lava at him. He went right on with his scooping, coconut-shell after coconut-shell full of sand. He worked all night with such **furious** energy that, when it was almost morning, he had made a sea of sand around Bromo that was nine hundred and ninety feet wide and nine hundred and ninety feet deep.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '"Just ten more feet to fill, before the sun comes up," he panted, "and then..." And the raksasa took up his batok again and filled it with sand.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Now the giant of Smeru, Indra\'s holy mountain, was watching, with his giant\'s eyes that could **pierce** the deepest darkness, to see how the raksasa was getting on with his **tremendous** task. When he realized that the work would be finished before daybreak, and that he would have to give his beloved daughter to the raksasa, he was beside himself with anger. For of course, he would have to keep his promise.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Just then, the raksasa threw another batok of sand, with a noise like thunder, onto the mounds that were already so high. This made the mountain giant even angrier. "Just a few more feet, and the work will e done," he muttered. "And it is still a long time until daybreak!" Wait.. Was that the crow of a cock that he heard? No, it was only his imagination. He heard nothing but the scooping of sand! But he began to think. What if he himself should **imitate** the crowing of the cock> After all, it was to save his child! And he was a giant, a demigod; he could do anything he wished.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '"Kukuleku," he cried suddenly.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '"Kukuleku," the cocks in the various villages answered him, The cocks had crowed! The day had begun!',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'And the raksasa, who still had three feet to fill, head the sound with fear and anger. **Furiously** he balled his fist; **furiously** he took the batok filled with sand and threw it from him. Upside down, with its round part on top, the batok lay in the deep place that he had scooped out around Bromo; and there it remained forever, as a high mountain which people called the Batok.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'But as soon as the raksasa had thrown down the batok, he heard a penetrating scream. Looking up, he saw Dewi Juranggga, staring at him with her great dark eyes, her hair streaming about her. "Kembang Manis! Kembang!" he cried to er sadly. "Lovely flower! All my work has been for nothing!"',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'But the beautiful young daughter of the mountain giant did not answer him. She had been turned to stone from horror; shhe had been changed into a mountain. And people called it the Kembang, after the last, loving word that the raksasa had said to her. For he, too, was turned to stone, just as the mountain giant had **prophesied** he would be if he did not finish his gigantic task before the beginning of the day. He, too, became a mountain-the Segarawedi.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The mountain giant received his punishment, too. In the end, he punished himself. He was so afraid of Brahma\'s anger that he hid himself in the depths of Smeru, and there he still sits and sighs and moans over the two lives he ruined so cruelly. With every sigh, he expels a heavy cloud of smoke that pushes through the top of the mountain and then spreads over the sky in a beautiful white plume. And the mountain giant must remain there, sighing and moaning and blowing out smoke clouds, until the raksasa, now the Segarawedi, and Dewi Jurangga, now the Kembang, return to their human forms after a thousand times a thousand years; until Mount Bromo has sunk out of sight, and until the Sand Sea is once more what it was in the beginning.',
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
      case 'possesions.':
        definition =
            'Kepemilikan; benda-benda yang dimiliki oleh seseorang. Kata ini digunakan untuk menunjukkan sesuatu yang dimiliki seseorang, seperti benda atau barang berharga.';
        break;
      case 'enchanted':
        definition =
            'Terkesima; terpesona; seolah-olah di bawah pengaruh magis atau keindahan yang luar biasa. Digunakan untuk menggambarkan keadaan ketika seseorang merasa sangat tertarik atau terpikat oleh sesuatu yang indah atau luar biasa.';
        break;
      case 'immortality':
        definition =
            'Keabadian; kondisi tidak bisa mati; hidup selamanya. Kata ini sering digunakan dalam konteks mitologi, agama, atau cerita fiksi untuk menggambarkan makhluk yang hidup selamanya tanpa mengalami kematian.';
        break;
      case 'devastating':
        definition =
            'Sangat merusak; menyebabkan kerusakan yang sangat besar. Digunakan untuk menggambarkan sesuatu yang menyebabkan kerusakan besar atau bencana.';
        break;
      case 'tremendous':
        definition =
            'Sangat besar; luar biasa; dahsyat. Kata ini digunakan untuk menunjukkan ukuran, kekuatan atau dampak yang sangat besar dari sesuatu.';
        break;
      case 'furious':
        definition =
            'Sangat marah; penuh amarah yang intens. Digunakan untuk menggambarkan tingkat kemarahan yang sangat besar atau marah yang ekstrem.';
        break;
      case 'furiously':
        definition =
            'Sangat marah; penuh amarah yang intens. Digunakan untuk menggambarkan tingkat kemarahan yang sangat besar atau marah yang ekstrem.';
        break;
      case 'Furiously':
        definition =
            'Sangat marah; penuh amarah yang intens. Digunakan untuk menggambarkan tingkat kemarahan yang sangat besar atau marah yang ekstrem.';
        break;
      case 'pierce':
        definition =
            'Menembus; menyorot tajam, biasanya digunakan untuk menggambarkan sesuatu yang mempu menembus atau menembus secara fisik atau secara metaforsis seperti menembus kegelapan atau kebohongan.';
        break;
      case 'imitate':
        definition =
            'Tiruan; meniru. Digunakan untuk menggambarkan tindakan meniru atau mencoba membuat sesuatu menyerupai yang asli.';
        break;
      case 'prophesied':
        definition =
            'Diramalkan; diprediksi; diungkapkan melalui ramalan. Digunakan dalam konteks cerita atau kepercayaan agama untuk menggambarkan sesuatu yang diramalkan akan terjadi di masa depan,';
        break;
      case 'fertile':
        definition =
            'Subur; mampu menghasilkan tanaman atau tumbuhan dengan baik. Digunakan dalam konteks tanah atau lahan yang dapat mendukung pertumbuhan tanaman dengan baik.';
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
          Navigator.pushNamed(context, '/intermediate/mountain/listening');
        },
        child: const Text('Next'),
      ),
    );
  }
}
