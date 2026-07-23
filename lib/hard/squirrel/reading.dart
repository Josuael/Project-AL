import 'package:flutter/material.dart';

class SquirrelReadingPage extends StatefulWidget {
  final String courseTitle;

  const SquirrelReadingPage({super.key, required this.courseTitle});

  @override
  State<StatefulWidget> createState() => _ReadingPage();
}

class _ReadingPage extends State<SquirrelReadingPage> {
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
              '/hard/squirrel/introduction'); // Arahkan ke halaman Introduction
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
              'One day, a man was walking through a **dense** forest. In one hand, he carried a kris, and in the other, a long **lance**, in case he met any tigers or snakes along the way. He had reached the edge of the forest and was congratulating himself that he had not had to use either his kris or his **lance**, when all at once, he heard a most **frightful** noise just above his head. He looked up into the **branches** from where it seemed to come and saw an **enormous** snake that had caught its tail in a **split** of one branch.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The snake was doing everything it could to free its tail. Suddenly, it saw the man and called out to him, “Oh, help me, help me! Make the **split** in the branch a little **wider** with your **lance** so that I can get my tail out and be on my way.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“I’ll gladly do that,” said the man, “if you first promise me that you will do me no harm after I have freed you.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“Well now, why should I do you harm?” asked the snake. “You have nothing to fear from me.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'So, the man made the **split** in the branch a little **wider** with his **lance**, and the snake pulled its tail out.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“Reach your **lance** up to me,” the snake said then, “so that I can **crawl** along it down to the ground.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The man did as instructed. The snake **curled** itself around the **lance** but, instead of creeping along it to the ground, it stopped at the man’s shoulder and **twined** itself fast around his neck.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“What are you doing?” the man cried out in **terror**. “Why are you twining yourself around my neck? Why don’t you **crawl** down to the ground?”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“Because I want to **slay** you,” hissed the snake.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“But you promised that you would do me no harm,” the man said.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“Well, so I did,” the snake replied. “Now, I am on earth, and on earth, good is always repaid with evil.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The man thought **frantically** of a way to escape. “Very well,” he said, “you may kill me. But first, I want to hear the opinion of three others, whom we may meet here in the woods, as to the truth of what you say.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“Good,” said the snake. “Let us go.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The first thing they came to was a palm tree. “Ask the palm tree,” ordered the snake.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“Palm tree,” the man explained, “just a little while ago I saved the life of this snake, and now it wants to kill me because it says, here on earth, good is always rewarded with evil. Is that true?”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“Certainly, it is true,” the palm tree said. “Look at me. With my waving fronds, I refresh the wanderers who come to me, tired and worn out; I let them sleep in my shade. And after they are refreshed, they hack me into little pieces with their sharp axes and throw me into the fire.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“Do you hear what the palm tree says?” asked the snake, twisting itself still tighter around the man’s throat.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'They went a little farther until they came to a brook. The man told the brook how he had saved the life of the snake and how it wanted to kill him because, on earth, good is always repaid with evil.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“The snake is right,” chattered the brook. “Just look at me. With my water, I revive all who come to me tired and thirsty. And after they have quenched their thirst, they repay me by throwing into my crystal-clear water all kinds of unclean things. You will have to let yourself be throttled by the snake because here on earth good is always rewarded with evil.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'And to the snake, “Go ahead, snake, and **throttle** the man who saved your life!”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The snake **twined** itself still tighter around the man’s neck until he almost suffocated. Gasping for breath, he cried, “Don’t kill me yet, O snake! Ask a third opinion. Then you may kill me.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“Very well,” said the snake, looking at a little squirrel that sat on one of the **branches** of a tree.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The man also saw the squirrel. “Let us ask him what he thinks,” he said to the snake.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“Ask him, then,” the snake said, “because I’m in a hurry to **throttle** you before I take the squirrel as my prey.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“Little squirrel,” the man said, “I saved the life of this snake, and now it wants to kill me because it says here on earth good is always rewarded with evil. Is that true?”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'The squirrel looked first at the snake and then at the man. “Well, that is very difficult to decide. I would like to see first how the whole thing happened. For I really don’t know just how you saved the life of the snake. You must show me that first. Only then can I give you my decision.”',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              '“I’ll certainly let you see how it went,” said the snake.',
            ),
            const SizedBox(height: 10),
            _buildTextWithClickableWords(
              'They all returned to the tree where the man had first seen the snake, and while it crept up the **trunk** toward the **split** branch, the man took his **lance** and **struck** the snake dead!',
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
      case 'dense':
        definition =
            'Lebat, sangat penuh atau padat, seperti hutan dengan banyak pohon.';
        break;
      case 'lance':
        definition =
            'Tombak panjang, senjata tajam yang digunakan untuk menusuk.';
        break;
      case 'lance,':
        definition =
            'Tombak panjang, senjata tajam yang digunakan untuk menusuk.';
        break;
      case 'frightful':
        definition = 'Menakutkan atau mengerikan.';
        break;
      case 'branches':
        definition = 'Cabang, bagian dari pohon yang tumbuh dari batang utama.';
        break;
      case 'enormous':
        definition = 'Sangat besar, melebihi ukuran biasa.';
        break;
      case 'split':
        definition =
            'Celah atau retakan, tempat sesuatu terbagi menjadi dua atau lebih.';
        break;
      case 'wider':
        definition = 'Lebih lebar, memperluas ruang atau jarak.';
        break;
      case 'crawl':
        definition = 'Merangkak atau bergerak perlahan, seperti ular.';
        break;
      case 'curled':
        definition = 'Melilit atau menggulung dalam bentuk melingkar.';
        break;
      case 'twined':
        definition = 'Melilit atau membelit sesuatu dengan erat.';
        break;
      case 'terror.':
        definition = 'Ketakutan yang sangat besar.';
        break;
      case 'slay':
        definition = 'Membunuh, biasanya dengan cara yang kejam.';
        break;
      case 'frantically':
        definition =
            'Dengan panik atau tergesa-gesa, biasanya karena takut atau khawatir.';
        break;
      case 'throttle':
        definition =
            'Mencekik, menghentikan napas dengan cara melilit atau menekan leher.';
        break;
      case 'trunk':
        definition =
            'Batang, bagian utama dari pohon yang menopang cabang-cabangnya.';
        break;
      case 'struck':
        definition = 'Memukul atau menyerang dengan keras.';
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
          Navigator.pushNamed(context, '/hard/squirrel/listening');
        },
        child: const Text('Next'),
      ),
    );
  }
}
