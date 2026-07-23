import 'package:flutter/material.dart';

class BorneoReadingPage extends StatefulWidget {
  final String courseTitle;

  const BorneoReadingPage({super.key, required this.courseTitle});

  @override
  State<StatefulWidget> createState() => _ReadingPage();
}

class _ReadingPage extends State<BorneoReadingPage> {
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
              '/hard/borneo/introduction'); // Arahkan ke halaman Introduction
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
              'Though tigers **prowl** the **jungles** of Java and **Sumatra** and many other islands of Indonesia, there are none at all in the **forests** of **Borneo**. An old **folk story** explains the reason for this.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'It seems that the Rajah of all the tigers, who lived in Java, found that food was becoming so scarce that he and his subjects were threatened with starvation. So he decided to send word to the inhabitants of Borneo that they must send him food, or he would come with his **army** and conquer their land.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'He **selected** three **messengers** to carry his **ultimatum** to Borneo, and they traveled across the sea, arriving at the island, **weary** and **hot***. They searched everywhere for the Rajah of Borneo but could not find him. Just as they were about to give up, they met a tiny mouse-deer.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“Where is your rajah?” the tigers **demanded**. “We have an **important** message to deliver to him.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“He is **hunting**,” the mouse-deer replied. “What is your **important** message?”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“We bring word from our rajah that your ruler must **surrender**. Take us to your rajah so that we can deliver our message.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The mouse-deer **thought** **quickly**. “Would it not be **better** if you **rested** here in the **shade**, after your long **journey**, and let me carry the message for you? I **promise** to find the rajah and deliver your message **promptly**, and I will bring you his answer.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The **messengers** looked at one another and decided, since it was so hot and they were so tired, to let the mouse-deer do as he suggested.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“Very well,” said the **spokesman**, “but be quick about it. Go and tell him that the Rajah of All the Tigers demands food in great **quantities**, which we shall **specify**. It must be given to us at once, or our rajah will send his **army** to destroy you. What is more,” he said, stepping forward and nearly knocking down the tiny mouse-deer, “give him this, as a **token** of our rajah’s **might**.” He drew out a tiger’s **whisker** and gave it to the mouse-deer.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“This is from the **royal** face,” he said importantly. “The rajah himself **plucked** it from his whiskers, to show how strong he is.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The mouse-deer took the **royal** **whisker** and held it away from him. “It is very large,” he said, in a tiny voice. “Your rajah must be strong and **fierce**.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“**Begone**!” said the messenger **imperiously**. “We will wait here... but **not too long**.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The mouse-deer turned and **fled**. His thoughts **raced** as he ran. If the Rajah of All the Tigers in Java needed food, he must be **desperate** for meat. “I am meat,” **thought** the little mouse-deer, “and so are all the **creatures** on Borneo. If the Rajah of All the Tigers sends an **army**, he will destroy us... and then he will remain in Borneo. I must think!”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'He ran through the woods and **leaped** over streams. Suddenly there was a **rustling** sound in the leaves, and his quick eyes spotted his friend, the porcupine.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The porcupine **peered** up at him. “Why are you in such a **hurry**, Kanchil?” he asked. “It’s too **hot** to run so fast.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“I’m worried... but seeing you has solved my problem. Give me one of your **quills**, friend, and save Borneo for all of us!”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“I’ll gladly give you a quill,” said the porcupine. “Surely I have enough to **spare**—at least one for my good friend the mouse-deer. But can’t you tell me why you need it?”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“Later,” said the mouse-deer. “You are a good friend indeed. You’ve saved our country.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'And off he **bounded**, bearing the quill in his teeth.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'He ran as fast as he could back to the spot where he had left the tigers. They were **pacing** back and forth, looking **annoyed** and **fierce**.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“Well, you’ve been gone a long time!” the oldest one cried angrily.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“I had to find our rajah,” said the mouse-deer **breathlessly**. “And I had to wait until he woke from his nap after his **hunting**. Then I had to wait for an audience. And then I had to wait for his answer.”“I had to find our rajah,” said the mouse-deer **breathlessly**. “And I had to wait until he woke from his nap after his **hunting**. Then I had to wait for an audience. And then I had to wait for his answer.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“Well, what is it?” the **messengers** **demanded**. “Did you tell him what our rajah said?”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“**Word for word**, just as you told me,” the mouse-deer answered. “I told him that your rajah **demanded** food at once, and **surrender**, or he would come with his great **army** and destroy us.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“Yes, yes. And he said...?”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The mouse-deer replied, “He said, ‘Very well, let the Rajah of All the Tigers in Java come and fight us. He will find that we can fight **better** than he. In **fact**, he said, ‘I am **weary** of peace and would welcome a **battle** in which we could prove our **might** once more.’”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“Did you give him the **whisker** from the **royal** face?” the oldest tiger asked.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“I gave it to him,” the mouse-deer replied. “And do you see this **whisker** I hold in my teeth?”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“Is that a whisker?” the tiger asked. “It is larger than you are, longer by a foot and thicker than your leg.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“It is from the **royal** face of our rajah,” the mouse-deer said. He took the quill from his teeth and handed it to the oldest messenger. “Feel it; see how thick it is. Our rajah **plucked** it from his face and said I was to give it to you to take to your rajah.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“Nothing more?” the **messengers** asked, turning **pale**.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“Nothing more... Oh, you are leaving now?”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The oldest tiger said **hurriedly**, “We must return at once. Our rajah awaits your rajah’s answer.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“Of course. And it is **hot** here, and you have a long way to go. Be sure to take good care of the whisker... although, if need be, our rajah can always send another one.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The oldest tiger took the big quill carefully in his **paws**, and all the **messengers** started back to Java. They crossed the land and then the water and then the land again, and finally came to the spot where their rajah waited **impatiently**.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“You have been gone far too long,” the rajah **rumbled** in his throat. “What word do you bring?”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The **messengers** **trembled** at the terrible tone of his voice, thinking of the message they had to deliver. They looked to the oldest one, and he swallowed hard, and said, “Oh mighty one, the **miserable** rajah of Borneo said he would welcome war and sent you this.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'He stepped forward fearfully and held out the big, thick quill of the porcupine. “It comes from his **royal** face,” he **quavered**.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The Rajah of All the Tigers in Java **gazed** at it long and hard, stroking his own whiskers all the while. He could not help feeling the difference. He said nothing for a long time.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Then he looked blandly at the **trembling** **messengers**. “I have decided,” he said, “that it would be **better** to demand food of the elephants of Sumatra.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Whether the elephants of Sumatra ever sent the food, the story does not tell, but it is a **fact** that from that day to this, there have been no tigers in Borneo.',
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
      case 'prowl':
        definition = 'Berkeliaran dengan tujuan mencari mangsa.';
        break;
      case 'jungles':
        definition = 'Hutan lebat yang biasanya tropis.';
        break;
      case 'sumatra':
        definition = 'Nama salah satu pulau besar di Indonesia.';
        break;
      case 'forests':
        definition = 'Hutan, area luas yang dipenuhi pohon-pohon.';
        break;
      case 'borneo':
        definition =
            'Nama pulau besar yang terletak di Asia Tenggara, dibagi antara Indonesia, Malaysia, dan Brunei.';
        break;
      case 'folk story':
        definition =
            'Cerita rakyat, cerita tradisional yang diwariskan secara turun-temurun.';
        break;
      case 'selected':
        definition =
            'Memilih, memilih sesuatu atau seseorang untuk tujuan tertentu.';
        break;
      case 'messengers':
        definition = 'Utusan, orang yang membawa pesan atau informasi.';
        break;
      case 'messengers.':
        definition = 'Utusan, orang yang membawa pesan atau informasi.';
        break;
      case 'ultimatum':
        definition =
            'Ultimatum, ancaman atau peringatan terakhir yang diberikan sebelum tindakan diambil.';
        break;
      case 'weary':
        definition =
            'Lelah, sangat capek atau kelelahan setelah melakukan aktivitas.';
        break;
      case 'hot':
        definition = 'Panas, suhu yang sangat tinggi.';
        break;
      case 'hot.':
        definition = 'Panas, suhu yang sangat tinggi.';
        break;
      case 'hunting.':
        definition =
            'Berburu, kegiatan mencari dan menangkap hewan untuk makanan atau olahraga.';
        break;
      case 'demanded':
        definition = 'Menuntut, meminta dengan tegas atau keras.';
        break;
      case 'demanded.':
        definition = 'Menuntut, meminta dengan tegas atau keras.';
        break;
      case 'important':
        definition =
            'Penting, sangat diperlukan atau memiliki nilai yang tinggi.';
        break;
      case 'surrender.':
        definition =
            'Menyerah, mengakui kekalahan dan menyerahkan diri kepada pihak lawan.';
        break;
      case 'surrender,':
        definition =
            'Menyerah, mengakui kekalahan dan menyerahkan diri kepada pihak lawan.';
        break;
      case 'thought':
        definition =
            'Berpikir, menggunakan pikiran untuk membuat keputusan atau pemikiran.';
        break;
      case 'quickly.':
        definition =
            'Cepat, dalam waktu yang singkat atau tanpa menunda-nunda.';
        break;
      case 'better':
        definition = 'Lebih baik, lebih disukai atau lebih menguntungkan.';
        break;
      case 'rested':
        definition =
            'Beristirahat, memberi tubuh kesempatan untuk pulih dari kelelahan.';
        break;
      case 'shade,':
        definition =
            'Teduh, tempat yang terlindung dari sinar matahari langsung.';
        break;
      case 'journey,':
        definition =
            'Perjalanan, aktivitas bepergian dari satu tempat ke tempat lain.';
        break;
      case 'promise':
        definition = 'Janji, komitmen untuk melakukan sesuatu di masa depan.';
        break;
      case 'promptly,':
        definition = 'Segera, dilakukan tanpa menunda-nunda.';
        break;
      case 'spokesman,':
        definition =
            'Juru bicara, orang yang berbicara atau mewakili kelompok.';
        break;
      case 'demand':
        definition = 'Menuntut, meminta dengan keras atau memaksa.';
        break;
      case 'quantities,':
        definition = 'Jumlah, ukuran atau banyaknya sesuatu.';
        break;
      case 'specify.':
        definition =
            'Menyebutkan secara jelas, memberikan rincian atau penjelasan yang tepat.';
        break;
      case 'army':
        definition = 'Tentara, kelompok besar yang dilatih untuk bertempur.';
        break;
      case 'army,':
        definition = 'Tentara, kelompok besar yang dilatih untuk bertempur.';
        break;
      case 'destroy':
        definition =
            'Menghancurkan, membuat sesuatu menjadi rusak atau hilang.';
        break;
      case 'token':
        definition =
            'Tanda, simbol atau barang yang digunakan sebagai representasi.';
        break;
      case 'might':
        definition =
            'Kekuatan, kemampuan untuk melakukan sesuatu dengan sangat kuat.';
        break;
      case 'might.':
        definition =
            'Kekuatan, kemampuan untuk melakukan sesuatu dengan sangat kuat.';
        break;
      case 'whisker':
        definition =
            'Kumis, rambut panjang yang tumbuh di wajah hewan, terutama di sekitar mulut.';
        break;
      case 'royal':
        definition =
            'Kerajaan, yang berhubungan dengan raja atau keluarga kerajaan.';
        break;
      case 'plucked':
        definition = 'Mencabut, mengambil atau memetik dengan tangan.';
        break;
      case 'fierce.':
        definition = 'Garang, sangat kuat atau ganas.';
        break;
      case 'Begone!':
        definition = 'Pergilah, perintah untuk pergi atau meninggalkan tempat.';
        break;
      case 'imperiously.':
        definition = 'Dengan sombong, cara yang penuh kuasa atau keangkuhan.';
        break;
      case 'not too long.':
        definition =
            'Tidak terlalu lama, dalam waktu yang singkat atau terbatas.';
        break;
      case 'fled.':
        definition =
            'Melarikan diri, berlari atau pergi dengan cepat untuk menghindari sesuatu.';
        break;
      case 'raced':
        definition = 'Berlari cepat, berpacu atau bergerak dengan cepat.';
        break;
      case 'desperate':
        definition =
            'Putus asa, sangat membutuhkan atau dalam keadaan darurat.';
        break;
      case 'creatures':
        definition = 'Makhluk, hewan atau kehidupan yang ada di alam.';
        break;
      case 'leaped':
        definition = 'Melompat, meloncati sesuatu dengan gerakan cepat.';
        break;
      case 'rustling':
        definition =
            'Suara berdesir, suara lembut yang dihasilkan oleh gesekan daun atau benda ringan.';
        break;
      case 'peered':
        definition = 'Mengintip, melihat dengan hati-hati atau penasaran.';
        break;
      case 'hurry,':
        definition = 'Terburu-buru, bergerak cepat untuk mencapai sesuatu.';
        break;
      case 'quills,':
        definition =
            'Duri atau jarum tajam, biasanya digunakan oleh porcupine sebagai alat pertahanan diri.';
        break;
      case 'spare':
        definition =
            'Memberikan, menyediakan sesuatu yang lebih atau cadangan.';
        break;
      case 'bounded,':
        definition = 'Melompat atau bergerak dengan lompatan cepat.';
        break;
      case 'pacing':
        definition =
            'Berjalan bolak-balik dengan cepat, biasanya karena merasa cemas atau kesal.';
        break;
      case 'annoyed':
        definition = 'Merasa terganggu atau kesal.';
        break;
      case 'breathlessly.':
        definition = 'Tanpa nafas, karena kelelahan atau kecemasan.';
        break;
      case 'Word for word,':
        definition =
            'Secara harfiah, persis seperti yang dikatakan, tanpa perubahan.';
        break;
      case 'surrender':
        definition = 'Menyerah, mengalah tanpa melawan.';
        break;
      case 'battle':
        definition =
            'Pertempuran, perkelahian besar antara dua kelompok atau pasukan.';
        break;
      case 'pale.':
        definition =
            'Pucat, wajah yang kehilangan warna, biasanya karena ketakutan atau kelelahan.';
        break;
      case 'hurriedly,':
        definition = 'Dengan tergesa-gesa, cepat karena ingin segera pergi.';
        break;
      case 'paws,':
        definition =
            'Cakar, kaki hewan yang memiliki cakar, seperti pada kucing atau singa.';
        break;
      case 'impatiently.':
        definition =
            'Dengan tidak sabar, merasa cemas atau tidak tenang menunggu sesuatu.';
        break;
      case 'rumbled':
        definition =
            'Suara rendah dan dalam, seperti suara guntur atau suara marah.';
        break;
      case 'trembled':
        definition = 'Gemetar, bergerak karena rasa takut atau cemas.';
        break;
      case 'miserable':
        definition = 'Sengsara, sangat menderita atau tidak bahagia.';
        break;
      case 'quavered.':
        definition =
            'Bergetar atau berbicara dengan suara gemetar, biasanya karena takut atau cemas.';
        break;
      case 'gazed':
        definition = 'Menatap dengan penuh perhatian atau lama.';
        break;
      case 'trembling':
        definition = 'Gemetar, bergetar karena ketakutan atau kecemasan.';
        break;
      case 'fact':
        definition = 'Fakta, sesuatu yang benar-benar terjadi atau nyata.';
        break;
      case 'fact,':
        definition = 'Fakta, sesuatu yang benar-benar terjadi atau nyata.';
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
          Navigator.pushNamed(context, '/hard/borneo/listening');
        },
        child: const Text('Next'),
      ),
    );
  }
}
