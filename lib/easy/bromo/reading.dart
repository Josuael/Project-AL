import 'package:flutter/material.dart';

class BromoReadingPage extends StatefulWidget {
  final String courseTitle;

  const BromoReadingPage({super.key, required this.courseTitle});

  @override
  State<StatefulWidget> createState() => _ReadingPage();
}

class _ReadingPage extends State<BromoReadingPage> {
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
              '/easy/bromo/introduction'); // Arahkan ke halaman Introduction
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
              'Every year, the Hindus who live in the Tengger mountains of Java celebrate the Bromo Feast, and this legend tells how it began. Kyai Kesuma and Nyai Kesuma were Hindus. They had a little house in the neighborhood of the great Sand Sea and lived there in happiness and **contentment**. But there was one thing missing in their lives: they had no child. And because they were both old, they could not hope to have a son—a son for whom they had prayed to Brahma for so many years.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'On a certain evening, shortly before midnight, they heard a gentle knock at the door of their little house. Kyai got up and opened the door, and there **stood** an old and poorly clothed man who said, “Please give me just a **handful** of rice and let me sleep this night under your roof, for I have come a long, long way, and I am tired and hungry.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Kyai called his wife, and both of them asked the old man in. They brought him a new sleeping mat, and Kyai said, “Rest here and be our guest as long as you like.” And Nyai brought coffee and rice cakes, and said in a friendly voice, “Eat of these rice cakes and drink of this coffee until you are satisfied. And then lie down and sleep after your long journey.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The old man ate the rice cakes and **drank** the coffee, and then he lay down on the mat and fell asleep. But when Kyai and Nyai Kesuma woke up the next morning and looked at the place where they had left the old man, they saw him, surrounded by a strange light, standing on the sleeping mat. Now he was no longer old and **bent**, but as handsome and straight as one of the gods. He told the old couple that he had been sent to them by Brahma.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“Brahma has heard your prayers,” he said, “and a son shall be born to you. When this son is full-grown, I shall come back to tell you what Brahma’s will is, and I am sure that you, who are so **devout** and so brave, will do whatever Brahma **demands** of you.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Kyai and Nyai bowed their gray heads to the earth, as a sign that they would do Brahma’s will without a **murmur**. And when they looked up again, Brahma’s messenger had disappeared.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'It was just a year after this miraculous visit that a son was born to them. The boy was very handsome, and the older he grew, the more handsome he became. As the years went by, he grew into a strong young man, and he was so brave and tireless and so good to his elders that Kyai and Nyai called their son the support and **pride** of their old age.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'One night, when the boy had reached young manhood, there came again a gentle knock at the door, and once more the messenger of Brahma **stood** before the old couple. The face of the **demigod** was **somber**, and he spoke in a soft, **grieved** voice.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“Brave people, tomorrow night is the new moon. Then you and your son must climb the mountain Bromo, up to the very edge of the **crater**. For on that night Brahma will demand your son. You must offer to your god whatever he **demands** of you—without complaint.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“Brahma’s will be done,” said the old couple, bowing to the earth.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Without **murmuring**, without complaining, the two old people started the next night, with their son, for the mountain Bromo. It was a long way to the place where Brahma was to demand their **sacrifice**. When they had reached the rim of the **crater**, they **knelt** on the ground and prayed, “Mighty Brahma, here is our son, the great **sacrifice** that you have demanded of us. See, here is our child, the support and **consolation** of our old age. Take him to you. But let us go with him. Let us die with him. Because, Great Father, we are both so old and so tired. And what will become of us if you take our son away? Who will herd our goats? Who will fetch the water from the **brook**, and plant the grain, if our son is not here to do it for us?”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'With their heads bowed to the earth, and with their son between them, they waited to hear what Brahma would say.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'And suddenly they heard Brahma’s godlike voice speaking to them. “Kyai and Nyai Kesuma, I will not demand your son as a **sacrifice**. He will be the support of both of you so long as you live. I only wanted to find out if you were willing to follow me, your god. You have given me that proof; you have honored my will. Go back to your home, and live there happily with your son!”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“We thank you, mighty Brahma, we thank you for your **unending** goodness,” the old people cried with gladness. “We will always think of you with deep love. And we will always remember this day by **offering** you the finest things that our fields and our herds have to give.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'With their son, they hurried back to their little house. There they took the fattest goat out of the herd, and the fairest ears of grain from the field, and they sent their son back to Bromo with these gifts.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'After he had killed the goat on the rim of the **crater**, the son threw the costly meat and the ears of grain into the **crater** and said, “Mighty Brahma, we bring you our **offering**, the best that we **possess**, in thanks for your goodness to us. May this be acceptable to you! And every year we will bring you such an **offering** again.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“And from that time on, on this same day, the Hindus who live in the Tengger mountains have brought their **offerings** to Brahma, to celebrate the Bromo Feast in his honor.',
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
      case 'contentment.':
        definition =
            'berarti kepuasan atau kebahagiaan yang tenang dan damai. Secara umum “contentment” dalam bahasa Indonesia dapat diartikan sebagai kepuasan hati, kesenangan, kedamaian batin.';
        break;
      case 'handful':
        definition =
            'secara harfiah berarti sebayak yang bisa digengam dalam satu tangan.';
        break;
      case 'drank':
        definition =
            'adalah bentuk lampau (past tense) dari kata kerja “drink” yang artinya adalah minum.';
        break;
      case 'bent,':
        definition =
            'Bungkuk atau membungkuk. menggambarkan postur tubuh yang tidak tegak, melainkan melengkung atau membungkuk, biasanya karena usia tua atau kelelahan.';
        break;
      case 'devout':
        definition =
            'Berarti saleh, taat beragama, atau berbakti. Kata ini menggambarkan seseorang yang memiliki keyakinan agama yang kuat dan menjalankan ajaran agamanya dengan sungguh-sungguh.';
        break;
      case 'demands':
        definition = 'Berarti menuntut, meminta dengan tegas, atau mewajibkan';
        break;
      case 'murmur.':
        definition = 'berarti gumaman, keluhan, atau prootes yang lirih. ';
        break;
      case 'murmuring,':
        definition = 'berarti gumaman, keluhan, atau prootes yang lirih. ';
        break;
      case 'pride':
        definition = 'Artinya kebbanggaan.';
        break;
      case 'stood':
        definition =
            'Bentuk lampau (past tense) dari kata kerja “stand” dalam Bahasa Inggris. Artinya bisa bermacam-macam tergantung konteks kalimatnya, tetapi secara umum berarti berdiri, tegak, atau terletak';
        break;
      case 'demigod':
        definition = 'Manusia ssetengah dewa atau makhluk setengah dewa.';
        break;
      case 'somber,':
        definition =
            'dalam bahasa inggris memiliki beberapa arti, yang semuanya berkaitan dengan suasana hati atau penampilan yang suram dan murung. Jadi, “Somber” bisa memiliki arti suram/muram, gelap/redup, serius/sungguh-sungguh';
        break;
      case 'grieved.':
        definition =
            'Bentuk lampau (past tense) dan bentuk past participle dari kata kerja “grieve” dalam bahasa Inggris. Kata ini berkaitan erat dengan perasaan duka cita dan kehilangan. Jadi “Grieved” artinya berduka/menderita, menyesali/meratapi';
        break;
      case 'crater.':
        definition =
            'Kawah (gunung berapi), kawah (akibat ledakan atau benturan), (kiasan) kerusakan parah';
        break;
      case 'crater,':
        definition =
            'Kawah (gunung berapi), kawah (akibat ledakan atau benturan), (kiasan) kerusakan parah';
        break;
      case 'crater':
        definition =
            'Kawah (gunung berapi), kawah (akibat ledakan atau benturan), (kiasan) kerusakan parah';
        break;
      case 'sacrifice.':
        definition =
            'dalam bahasa Inggris memiliki beberapa arti, yang umumnya berkaitan dengan tindakan memberikan sesuatu yang berharga demi tujuan yang lebih tinggi atau penting.';
        break;
      case 'sacrifice':
        definition =
            'dalam bahasa Inggris memiliki beberapa arti, yang umumnya berkaitan dengan tindakan memberikan sesuatu yang berharga demi tujuan yang lebih tinggi atau penting.';
        break;
      case 'unending':
        definition =
            'Berarti tidak bekesudahan, tak berujung, abadi, atau kekal. Kata ini menggambarkan sesuatu yang tidak memiliki akhir atau batas';
        break;
      case 'knelt':
        definition =
            'Bentuk lampau (past tense) dan bentuk past participle dari kata kerja “kneel” yang artinya berlutut';
        break;
      case 'consolation':
        definition =
            'Dalam bahasa Inggris memiliki arti penghiburan, pelipur lara, atau hiburan hati. Kata ini merujuk pada tindakan atau sesuatu yang memberikan rasa nyaman dan mengurangi kesedihan, kekecewaan, atau penderitaan.';
        break;
      case 'brook,':
        definition =
            'dalam bahasa Inggris memiliki beberapa arti, tergantung konteksnya yaitu anak sungai/aliran kecil, menerima/mentolerir';
        break;
      case 'offering,':
        definition =
            'dalam bahasa Inggris memiliki beberapa arti, yang umumnya berkaitan dengan tindakan memberikan sesuatu yang berharga demi tujuan yang lebih tinggi atau penting.';
        break;
      case 'offering':
        definition =
            'dalam bahasa Inggris memiliki beberapa arti, yang umumnya berkaitan dengan tindakan memberikan sesuatu yang berharga demi tujuan yang lebih tinggi atau penting.';
        break;
      case 'offerings':
        definition =
            'dalam bahasa Inggris memiliki beberapa arti, yang umumnya berkaitan dengan tindakan memberikan sesuatu yang berharga demi tujuan yang lebih tinggi atau penting.';
        break;
      case 'possess,':
        definition =
            'Dalam bahasa Inggris memiliki arti memiliki, mempunyai, atau menguasai. Kata ini merujuk pada kepemilikan atau penguasaan terhadap sesuatu, baik benda berwujud maupun sifat atau kemampuan';
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
          Navigator.pushNamed(context, '/easy/bromo/listening');
        },
        child: const Text('Next'),
      ),
    );
  }
}
