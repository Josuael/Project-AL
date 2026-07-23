import 'package:flutter/material.dart';

class ButterflyReadingPage extends StatefulWidget {
  final String courseTitle;

  const ButterflyReadingPage({super.key, required this.courseTitle});

  @override
  State<StatefulWidget> createState() => _ReadingPage();
}

class _ReadingPage extends State<ButterflyReadingPage> {
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
              '/easy/butterfly/introduction'); // Arahkan ke halaman Introduction
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
              'Kembang Melati, a beautiful young princess, lived with her old nurse and many serving-women in a palace on the bank of a great river. Across the river stood the rainbow-colored palace of Rajah Banjir, the **monarch** of the rains, who could summon **floods** at will, and whose tears made brooks and rivers **swell**. From his windows, he often gazed at the princess weaving her bridal dress and singing songs for good fortune, but the princess never looked toward his side of the river.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Rajah Banjir, deeply smitten, wept many tears as he longed for the princess. His sadness caused the river to **swell**, while the wind **sighed** softly through the tall trees around her palace. Although the princess noticed the rising river and the sighing wind, she did not realize that it was her future husband calling to her.Rajah Banjir, deeply smitten, wept many tears as he longed for the princess. His sadness caused the river to **swell**, while the wind **sighed** softly through the tall trees around her palace. Although the princess noticed the rising river and the sighing wind, she did not realize that it was her future husband calling to her.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'One day, unable to endure the separation, Rajah Banjir transformed himself into a golden butterfly and flew before the princess’s window. Intrigued by the **dazzling** butterfly, the princess opened her window to admire it. The butterfly landed on her hand, kissed her fingertips, and flew away. A few days later, it returned, perched on her ear, and whispered, “Weave your bridal dress quickly, princess, for soon your bridegroom will come.” The princess, hearing only the word "bridegroom," asked, “Where is my bridegroom?” But the butterfly had already **flown** away.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Nasiman, the **wicked** son of the princess’s nurse, overheard her question. He persuaded his mother to tell the princess that he was her bridegroom. Although the old nurse hesitated, fearing her son’s cruelty, she eventually obeyed. However, when Nasiman approached, the golden butterfly returned and whispered to the princess, “The real bridegroom has not yet come. The man before you is Nasiman, the son of your nurse, Sarinah. He is **wicked**; do not marry him. Wait for your true bridegroom.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The princess refused Nasiman, but her nurse **begged** her to marry him to save their lives. Reluctantly, the princess agreed to delay her decision for seven days. She instructed Nasiman to wait by the riverbank, where she would send her answer. Nasiman, pleased, prepared provisions and settled by the river.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Meanwhile, Rajah Banjir sent a white crow, carrying a chest of golden ornaments and a letter, to the princess. The crow, distracted by Nasiman’s offer of fish, set the chest and letter aside to eat. While the bird feasted, Nasiman replaced the ornaments with spiders and scorpions and altered the letter’s words to insult the princess.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'When the white crow delivered the chest and letter, the princess was horrified by the **cruel** words and threw the chest, unopened, into the garden. Spiders and scorpions swarmed out, deepening her grief. She vowed never to weave her bridal gown again.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Nasiman was **wicked** and **cruel**, and his mother was afraid of him. So she went to the princess and told her about the bridegroom who had come to claim her hand. Just then, the golden butterfly returned and whispered in the princess\'s ear. "The real bridegroom has not yet come, princess. The one who is now under your roof is a **wicked** man, His name is Nasiman, and he is the son of your old nurse, Sarinah. Do not marry him... Wait until the true bridegroom arrives!"That evening, the golden butterfly returned, urging her to finish the gown and prepare to meet her true bridegroom. Angered and hurt, the princess rejected the butterfly, commanding her servants to drive it away.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Furious and heartbroken, Rajah Banjir summoned a mighty flood. The rising waters tore the princess’s palace from the land, carrying it downstream. As the palace drifted near Rajah Banjir’s home, he ignored the princess’s cries for help. However, when the nurse confessed her deceit, revealing Nasiman’s treachery and her own role in altering the letter, Rajah Banjir forgave the princess and rescued her and her attendants. He left the nurse and Nasiman to drift away, never to return.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Rajah Banjir married Kembang Melati, and they lived happily ever after in his radiant, rainbow-colored palace.',
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
      case 'monarch':
        definition =
            'Berarti raja, ratu, atau penguasa monarki. Kata ini merujuk pada seorangpemimpin tunggal yang memegang kekuasaan tertinggi dalam suatu kerjaan atau monarki';
        break;
      case 'floods':
        definition =
            'Bisa memiliki dua arti tergantung konteksnya, banjir yang sebagai kata benda dan membanjiri/menggenangi sebagai kata kerja';
        break;
      case 'swell.':
        definition =
            'Dapat memiliki beberapa arti, aik sebagai kata kerja maupun kata sifat. Untuk kata kerja bisa membengkak/mengembang, meningkat/bertambah untuk suatu kuantitas atau intensitas, bangga/senang untuk menggambarkan sebuah perasaan. Dan dalam kata sifat, bisa berarti keren/hebat sebagai slang/informal. Dalam kata benda, bisa berarti pembengkakan, gelombang besar (di laut)';
        break;
      case 'swell,':
        definition =
            'Dapat memiliki beberapa arti, aik sebagai kata kerja maupun kata sifat. Untuk kata kerja bisa membengkak/mengembang, meningkat/bertambah untuk suatu kuantitas atau intensitas, bangga/senang untuk menggambarkan sebuah perasaan. Dan dalam kata sifat, bisa berarti keren/hebat sebagai slang/informal. Dalam kata benda, bisa berarti pembengkakan, gelombang besar (di laut)';
        break;
      case 'sighed':
        definition =
            'Bentuk lampau (past tense) dari kata kerja “sigh”. Artinya adalah mendesis, menghela napas, atau berdesah. Kata ini menggambarkan tindakan mengeluarkan napas panjang dan dalam, biasanya karena merasa lelah, kecewa, lega atau sedih';
        break;
      case 'Weeping,':
        definition =
            'Menangis atau mengeluarkan air mata. Digunakan untuk menunjukkan emosi yang kuat, terutama kesedihan yang mendalam.';
        break;
      case 'weeping':
        definition =
            'Menangis atau mengeluarkan air mata. Digunakan untuk menunjukkan emosi yang kuat, terutama kesedihan yang mendalam.';
        break;
      case 'dazzling.':
        definition =
            'Berarti mempesona, menyilaukan, atau sangat mengagumkan. Kata ini menggambarkan sesuatu yang sangat terang, berkilau, atau indah sehingga membuat orang terpesona atau terpukau';
        break;
      case 'perched':
        definition =
            'Duduk atau beristirahat di sesuatu, biasanya di tempat yang tinggi. Kata ini menggambarkan posisi atau keadaan suatu benda, serin kali digunakan dalam konteks burung atau serangga yang hinggap dii suatu tempat.';
        break;
      case 'flown':
        definition =
            'Bentuk past participle dari kata kerja “fly”. Artinya adalah terbang (telah terbang). Kata ini digunakan dalam kalimat perfect tenses, seperti present perfect, past perfect, dan future perfect.';
        break;
      case 'wicked':
        definition =
            'memiliki beberapa arti, yang umumnya berkaitan dengan kejahatan atau kenakalan. Sebagai kata sifat artinya adalah jahat/bengis, nakap/nakal dallam hal yang ringan, hebat/luar biasa sebagai slang atau informal. Sebagai kata keterangan, artinya jahat atau dengann nakal';
        break;
      case 'wicked;':
        definition =
            'memiliki beberapa arti, yang umumnya berkaitan dengan kejahatan atau kenakalan. Sebagai kata sifat artinya adalah jahat/bengis, nakap/nakal dallam hal yang ringan, hebat/luar biasa sebagai slang atau informal. Sebagai kata keterangan, artinya jahat atau dengann nakal';
        break;
      case 'cruel':
        definition =
            'Berarti kejam, zalim, sadis, atau tega. Kata ini menggambarkan perilaku atau tindakan yang dengan sengaja menyebabkan penderitaan fisik atau emosional pada orang lain atau hewan';
        break;
      case 'cruel,':
        definition =
            'Berarti kejam, zalim, sadis, atau tega. Kata ini menggambarkan perilaku atau tindakan yang dengan sengaja menyebabkan penderitaan fisik atau emosional pada orang lain atau hewan';
        break;
      case 'begged':
        definition =
            'bentuk lampau (past tense) dari kata kerja "beg". Artinya adalah memohon, meminta dengan sangat, mengemis, atau merayu. Kata ini menggambarkan tindakan meminta sesuatu dengan sungguh-sungguh dan rendah hati, seringkali karena kebutuhan yang mendesak atau dalam situasi yang sulit.';
        break;
      case 'piteously':
        definition =
            'Dengan cara yang membuat orang lain merasa kasihan. Kata ini digunakan untuk menggambarkan cara seseorang memohon atau menangis yang membuat orang lain merasa kasihan.';
        break;
      case 'astonishment':
        definition =
            'Rasa terkejut atau heran yang besar. Menggambarkan perasaan terkejut atau kagum.';
        break;
      case 'swarmed':
        definition =
            'Bergerak bersama dalam jumlah besar. Digunakan untuk menggambarkan gerakan dalam jumlah besar, seperti serangga atau bintang yang bergerak bersama-sama.';
        break;
      case 'submerged':
        definition =
            'Tertutup seluruhanya oleh air atau tenggekam. Kata ini digunakan untuk menggambarkan sesuatu yang sepenuhnya terbenam dalam air.';
        break;
      case 'drifted':
        definition =
            'Terhanyut. Kata ini menggambarkan gerakan lambar yang tidak terkendali, sering kali karena dibawa oleh air atau angin.';
        break;
      case 'drifting':
        definition =
            'Terhanyut. Kata ini menggambarkan gerakan lambar yang tidak terkendali, sering kali karena dibawa oleh air atau angin.';
        break;
      case 'confession,':
        definition =
            'Pengakuan. Sering digunakan ketika karakter mengungkapkan sesuatu yang mereka sembunyikan atau kesalahan yang mereka buat.';
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
          Navigator.pushNamed(context, '/easy/butterfly/listening');
        },
        child: const Text('Next'),
      ),
    );
  }
}
