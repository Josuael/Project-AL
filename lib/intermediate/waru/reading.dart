import 'package:flutter/material.dart';

class WaruReadingPage extends StatefulWidget {
  final String courseTitle;

  const WaruReadingPage({super.key, required this.courseTitle});

  @override
  State<StatefulWidget> createState() => _ReadingPage();
}

class _ReadingPage extends State<WaruReadingPage> {
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
              '/intermediate/waru/introduction'); // Arahkan ke halaman Introduction
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
              'Behind a certain village in Jaa there stands a mountain, and on this mountain grows a tree called the waru. From the wood of this tree, the **natives** cut their **lance** **shafts**, and a Javanese man holds the waru tree in great **esteem* because he believes that if his **lance** has a shaft of waru wood, he will have no trouble in **overcoming** his enemies. The reason he believes this is told in a very old story.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The name of the mountain meant **“fragrant”**—that is, a place with an air of holiness about it. And men called the mountain holy because in its **caverns** lived many **hermits**. Among these **hermits** were some who possessed **supernatural** powers. One of these **hermits** was a very old, **pious**, and wise man. They called him Kawitjaksana, which means “hermit full of **wisdom**.” People came from far places to hear his words and ask for his advice because it was always good.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The old man lived in **poverty**. He wore a **garment** **woven** of bark, tied around his waist with strong plant **fibers**, and he ate only the fruits and herbs that he found in the woods and on the mountain. When he had **fasted** two days and was almost a **skeleton**, he would fast still a third and even a fourth day. **Moreover**, he lived like a hermit: he did not speak with the other **hermits**, but only to Brahma, the Creator, and with the people who came to him for advice on matters that troubled them.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The other **hermits**, many of whom did not lead **pious** lives, after a time became **jealous** of the way people preferred this kindly, simple man to themselves. In their **unreasoning** jealousy, they **plagued** the **gentle**, **grey-haired** tapa in all kinds of evil ways; finally, the poor old man could not come outside his cave without being hit by **rotten** fruit and **wounded** by stones thrown by the other **hermits**.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'This went on for a long time. Still, the old hermit did not **moan** over his **lot**, nor did he **protest** that people of his own **caste** were making life **unbearable** for him. The tapa did not ask for help from any of the gods nor from Brahma, the **Creator**.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'It happened that at this time no waru trees grew on the holy mountain. It was **bare** except for great stones, and its sides were **cleft** by deep **fissures** and caves, and the nearest village was far away. That was why the villagers had no idea of what the poor old hermit had to **endure**.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'It **came to pass** that the hermit, having **fasted** for two days, was driven by hunger to come out of his cave to hunt for something to eat. As he was walking **feebly** along a **ravine**, where he was **accustomed** to gathering roots and herbs, some of the other **hermits** saw him. At a **sign** from one of the most **villainous**, they **fell upon** the **pious** man and **rushed** him toward the edge of the **ravine**, to throw him down onto the **sharp-pointed** stones that lay at the bottom.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The tapa knew that his **enemies** wanted to kill him, and that he would **surely** die if they threw him over the **cliff**. He had never asked anything of Brahma, but now he sent up a **fervent** **prayer** to the **Creator** to give him a **sign**, something that might save him from his enemies.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Even as he prayed, an **enormous** snake fell at the feet of the **hermits**. At first, they **shrank** back, **frightened**, but when they saw what it was, they cried, “Oh, it’s only a snake! What do we have to fear from a snake? If it’s a **poisonous** one, it can’t **harm** us—we’re holy men!” With that, they **grabbed** the old tapa and pushed him closer to the edge of the **cliff**.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'At that **instant**, the snake, sent by Brahma, **flung** up its head and **planted**  its tail in the **loose** earth so that it stood **upright** between the **pious** tapa and his enemies.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'They fell back in **astonishment**, and before their eyes, the snake began to change into a tree. The head split into many **branches**, and each drop of the snake’s **venom** became thick leaves. When the hermits saw this, they understood at last the power of the wise old tapa. They bowed low before him, then one of them rose and cut a branch from the tree, **fashioning** it into a **lance** shaft, which he presented to the grey-haired tapa, saying, “May the **lance** which this shaft shall hold kill all of us if we ever forget to **honor** you as the bravest, wisest, and **mightiest** of hermits!”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'Now, as the man spoke these words, another **miracle** took place. For as soon as the old tapa **grasped** the shaft, it suddenly **acquired** a **fine-pointed** **lance**. The other hermits bowed still lower in **homage** before their **mighty** brother, and they cried, “Now we have seen that you are high, high above us, that you are truly one of Brahma’s **chosen**!”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'And even now, after all this time, when new waru trees **rise** from the earth on the holy mountain, people greet their **appearance** with **joy** because they know that they have **grown** out of the snake that Brahma sent to **save** the **life** of Kawitjaksana.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'That is why the Javanese still say that **lance** **shafts** cut from the wood of the waru wanggi can do wonderful things, especially if carried in battle. For whoever carries a **lance** with a shaft of waru wood will surely overcome all his enemies.',
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
      case 'natives':
        definition =
            'Penduduk asli atau orang-orang yang berasal dari suatu daerah tertentu.';
        break;
      case 'lance':
        definition = 'Tombak, senjata panjang dengan ujung runcing.';
        break;
      case 'lance.':
        definition = 'Tombak, senjata panjang dengan ujung runcing.';
        break;
      case 'shafts':
        definition =
            'Gagang atau tangkai panjang, biasanya digunakan untuk mendukung kepala senjata seperti tombak.';
        break;
      case 'shafts,':
        definition =
            'Gagang atau tangkai panjang, biasanya digunakan untuk mendukung kepala senjata seperti tombak.';
        break;
      case 'esteem':
        definition = 'Penghargaan atau rasa hormat yang tinggi.';
        break;
      case 'overcoming':
        definition =
            'Mengatasi atau menang melawan sesuatu, seperti musuh atau rintangan.';
        break;
      case 'fragrant':
        definition = 'Harum, berbau wangi.';
        break;
      case 'caverns':
        definition = 'Gua besar.';
        break;
      case 'hermits':
        definition =
            'Pertapa, orang yang hidup menyendiri untuk alasan spiritual.';
        break;
      case 'hermits.':
        definition =
            'Pertapa, orang yang hidup menyendiri untuk alasan spiritual.';
        break;
      case 'hermits,':
        definition =
            'Pertapa, orang yang hidup menyendiri untuk alasan spiritual.';
        break;
      case 'supernatural':
        definition = 'Gaib, kekuatan di luar penjelasan ilmiah.';
        break;
      case 'pious':
        definition = 'Saleh, sangat religius.';
        break;
      case 'pious,':
        definition = 'Saleh, sangat religius.';
        break;
      case 'wisdom.':
        definition = 'Kebijaksanaan, kemampuan membuat keputusan yang baik.';
        break;
      case 'poverty.':
        definition = 'Kemiskinan, keadaan tidak memiliki banyak harta.';
        break;
      case 'garment':
        definition = 'Pakaian.';
        break;
      case 'woven':
        definition = 'Ditenun, dibuat dengan cara menganyam serat.';
        break;
      case 'fibers,':
        definition =
            'Serat, bahan yang digunakan untuk membuat tali atau kain.';
        break;
      case 'fasted':
        definition = 'Berpuasa, tidak makan atau minum untuk waktu tertentu.';
        break;
      case 'skeleton,':
        definition =
            'Kerangka, tubuh yang sangat kurus sehingga menyerupai tulang.';
        break;
      case 'Moreover,':
        definition = 'Selain itu, lebih lagi.';
        break;
      case 'jealous':
        definition = 'Cemburu, merasa iri hati.';
        break;
      case 'unreasoning':
        definition = 'Tidak masuk akal, tanpa alasan yang logis.';
        break;
      case 'plagued':
        definition = 'Diganggu, dianiaya terus-menerus.';
        break;
      case 'gentle,':
        definition = 'Lemah lembut, baik hati.';
        break;
      case 'grey-haired':
        definition = 'Berambut abu-abu, sering menunjukkan usia tua.';
        break;
      case 'rotten':
        definition = 'Busuk, rusak karena pembusukan.';
        break;
      case 'wounded':
        definition = 'Terluka, terkena cedera.';
        break;
      case 'moan':
        definition = 'Mengeluh, mengungkapkan rasa sakit atau ketidakpuasan.';
        break;
      case 'lot,':
        definition = 'Nasib, keadaan hidup seseorang.';
        break;
      case 'protest':
        definition = 'Memprotes, menyatakan ketidaksetujuan.';
        break;
      case 'caste':
        definition =
            'Kasta, sistem kelas sosial yang sering digunakan di India.';
        break;
      case 'unbearable':
        definition = 'Tidak tertahankan, sangat sulit untuk dihadapi.';
        break;
      case 'Creator':
        definition =
            'Pencipta, dalam konteks ini mengacu pada Brahma, dewa pencipta dalam agama Hindu.';
        break;
      case 'bare':
        definition = 'Tandus, tidak memiliki tumbuhan atau penutup.';
        break;
      case 'cleft':
        definition = 'Retakan, celah yang dalam.';
        break;
      case 'fissures':
        definition = 'Retakan panjang dan sempit, biasanya di tanah atau batu.';
        break;
      case 'endure.':
        definition = 'Menahan, menghadapi sesuatu yang sulit atau menyakitkan.';
        break;
      case 'came to pass':
        definition = 'Terjadi, sesuatu yang berlangsung.';
        break;
      case 'feebly':
        definition = 'Dengan lemah, tanpa kekuatan.';
        break;
      case 'ravine,':
        definition = 'Jurang, lembah sempit yang curam.';
        break;
      case 'accustomed':
        definition = 'Terbiasa, sering dilakukan.';
        break;
      case 'villainous,':
        definition = 'Jahat, sangat buruk atau tidak bermoral.';
        break;
      case 'fell upon':
        definition = 'Menyerang, menyerbu dengan kekerasan.';
        break;
      case 'rushed':
        definition = 'Mendorong dengan cepat atau tiba-tiba.';
        break;
      case 'sharp-pointed':
        definition = 'Runcing, dengan ujung yang tajam.';
        break;
      case 'enemies':
        definition = 'Musuh, orang-orang yang bermaksud jahat.';
        break;
      case 'surely':
        definition = 'Pasti, tanpa keraguan.';
        break;
      case 'clif.f':
        definition = 'Tebing, dinding batu yang curam.';
        break;
      case 'fervent':
        definition = 'Penuh semangat atau sungguh-sungguh.';
        break;
      case 'prayer':
        definition = 'Doa, permohonan kepada Tuhan atau dewa.';
        break;
      case 'sign':
        definition =
            'Tanda, sesuatu yang menunjukkan pesan atau maksud tertentu.';
        break;
      case 'sign,':
        definition =
            'Tanda, sesuatu yang menunjukkan pesan atau maksud tertentu.';
        break;
      case 'enormous':
        definition = 'Sangat besar, luar biasa besar.';
        break;
      case 'shrank':
        definition = 'Mundur, bergerak menjauh karena takut atau terkejut.';
        break;
      case 'frightened,':
        definition = 'Ketakutan, merasa takut.';
        break;
      case 'poisonous':
        definition = 'Beracun, dapat menyebabkan keracunan atau kematian.';
        break;
      case 'harm':
        definition = 'Membahayakan, menyebabkan kerugian atau cedera.';
        break;
      case 'grabbed':
        definition = 'Meraih atau menangkap dengan cepat.';
        break;
      case 'instant,':
        definition = 'Seketika, dalam waktu yang sangat singkat.';
        break;
      case 'flung':
        definition = 'Melemparkan atau menggerakkan dengan cepat dan kuat.';
        break;
      case 'planted':
        definition = 'Menancapkan, menempatkan sesuatu dengan kuat di tanah.';
        break;
      case 'loose':
        definition = 'Longgar, tidak kokoh atau tidak padat.';
        break;
      case 'upright':
        definition = 'Tegak, berdiri lurus ke atas.';
        break;
      case 'astonishment':
        definition = 'Keheranan, rasa sangat terkejut atau kagum.';
        break;
      case 'venom':
        definition =
            'Racun, zat berbahaya yang dapat menyebabkan keracunan atau kematian.';
        break;
      case 'branches,':
        definition = 'Dahan, bagian dari pohon yang tumbuh dari batang utama.';
        break;
      case 'fashioning':
        definition =
            'Membuat atau membentuk sesuatu, biasanya dengan keterampilan.';
        break;
      case 'honor':
        definition = 'Menghormati, memberi penghargaan atau rasa hormat.';
        break;
      case 'mightiest':
        definition = 'Paling kuat, paling hebat.';
        break;
      case 'miracle':
        definition =
            'Keajaiban, peristiwa luar biasa yang tidak dapat dijelaskan dengan logika biasa.';
        break;
      case 'grasped':
        definition = 'Memegang atau menggenggam dengan erat.';
        break;
      case 'acquired':
        definition = 'Memperoleh, mendapatkan sesuatu.';
        break;
      case 'fine-pointed':
        definition = 'Runcing, ujung yang sangat tajam dan tipis.';
        break;
      case 'homage':
        definition =
            'Penghormatan, penghargaan yang diberikan dengan penuh rasa hormat.';
        break;
      case 'mighty':
        definition = 'Kuat, hebat, sangat berkuasa.';
        break;
      case 'chosen':
        definition = 'Terpilih, dipilih untuk suatu tujuan khusus.';
        break;
      case 'rise':
        definition = 'Muncul, tumbuh atau naik dari bawah.';
        break;
      case 'appearance':
        definition = 'Penampilan, cara sesuatu muncul atau terlihat.';
        break;
      case 'joy':
        definition = 'Kegembiraan, rasa bahagia atau senang.';
        break;
      case 'grown':
        definition =
            'Tumbuh, berkembang dari sesuatu yang lebih kecil menjadi lebih besar.';
        break;
      case 'save':
        definition = 'Menyelamatkan, melindungi dari bahaya atau kerusakan.';
        break;
      case 'life':
        definition =
            'Kehidupan, keadaan hidup seseorang atau makhluk hidup lainnya.';
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
          Navigator.pushNamed(context, '/intermediate/waru/listening');
        },
        child: const Text('Next'),
      ),
    );
  }
}
