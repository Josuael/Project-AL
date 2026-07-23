import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class ButterflyListeningPage extends StatefulWidget {
  final String courseTitle;

  const ButterflyListeningPage({Key? key, required this.courseTitle})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _ButterflyListeningPageState();
}

class _ButterflyListeningPageState extends State<ButterflyListeningPage> {
  final FlutterTts flutterTts = FlutterTts();

  // Teks cerita panjang dipisahkan untuk keterbacaan
  final String storyText =
      'Once upon a time, in a grand palace by the river, lived a beautiful princess named Kembang Melati. She spent her days weaving a bridal dress while singing songs of good fortune. The princess lived with her old nurse and many serving-women. On the opposite side of the river lived Rajah Banjir, the mighty monarch of the rains. Rajah Banjir could control floods with his tears, and his gaze often rested on the princess’s palace. He would watch her through his windows, but she never looked his way.'
      'Rajah Banjir grew sadder each day, and his sorrow caused the river to swell and the wind to sigh through the trees around his palace. The princess heard the wind and saw the river rise, but she did not know that the monarch of the rains was weeping for her.'
      'One day, in his longing to be closer to the princess, Rajah Banjir turned into a golden butterfly and flew near her window. The butterfly dazzled the princess with its wings, and she admired it, opening her window. The butterfly landed on her hand, kissed her fingers, and flew away.'
      'few days later, the butterfly returned, sitting on the princess’s ear. It whispered, “Weave your bridal dress quickly, princess, for soon your bridegroom will come.” The princess, surprised, asked, “Where is my bridegroom?” But the butterfly didn’t answer and flew away.'
      'Nearby, Nasiman, the wicked son of the princess’s old nurse, overheard the conversation. He hurried to his mother and told her, “The princess asked where her bridegroom is. Tell her I am her bridegroom.” His mother, afraid of him, went to the princess and told her that her bridegroom had come.'
      'Just as the nurse spoke, the golden butterfly returned and whispered to the princess, “The true bridegroom has not yet come. The man under your roof is wicked. His name is Nasiman, the son of your nurse, Sarinah. Do not marry him. Wait for your true bridegroom.”'
      'The princess decided to wait for the real bridegroom, telling her nurse, “Tell him I need seven days to think it over. I will send my answer to the riverbank.”'
      'Nasiman agreed to wait, and he set up camp on the riverbank with enough food for seven days. Meanwhile, Rajah Banjir sent a white crow, his messenger, with a chest of precious ornaments and a letter for the princess. The crow flew across the river and landed near Nasiman, who was eating fish. The crow, eager to taste the fish, asked, “May I have a bite?” Nasiman agreed, but tricked the crow into setting down the chest and letter while she ate. He replaced the ornaments with spiders and scorpions and rushed to his mother with the letter.'
      'The crow, unaware of the trick, finished eating and flew to deliver the letter and chest. When the princess received them, she read the letter, only to find cruel words inside: “You are very ugly, and the contents of the chest are foul and old.” Deeply hurt, she tore the letter up and threw the chest away, not opening it. Spiders and scorpions swarmed into the garden.'
      'The princess wept and declared she would never weave her bridal dress again. The golden butterfly returned, but the princess swatted at it angrily. Her actions made Rajah Banjir so furious that he caused a mighty flood to sweep over the land. The palace with the princess, her nurse, and Nasiman floated downstream, heading toward Rajah Banjir’s palace.'
      'Rajah Banjir, standing in the doorway, watched as the palace neared. But he pretended not to see. The princess called out for help, but he remained silent. As the palace drifted away, the nurse confessed, “I am to blame for changing the words in the letter. My son, Nasiman, filled the chest with spiders and scorpions!”'
      'Upon hearing this, Rajah Banjir leaped into action. He rescued the princess and everyone in the palace, taking them to his own rainbow-colored palace. The wicked nurse and her son, Nasiman, were left behind to float away forever.'
      'Rajah Banjir then married Princess Kembang Melati, and they lived happily ever after in his magnificent palace.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f8fc),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pushNamed(context, '/easy/butterfly/reading');
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            _buildTitle(),
            const SizedBox(height: 16),
            _buildContent(),
            const Spacer(),
            _buildPlayAudioButton(),
            const SizedBox(height: 16),
            _buildNextButton(),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return const Text(
      'Listening',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }

  Widget _buildContent() {
    return Expanded(
      child: SingleChildScrollView(
        child: Text(
          storyText,
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
            height: 1.5,
          ),
        ),
      ),
    );
  }

  Widget _buildPlayAudioButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: _speak,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff1c92ff),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(vertical: 12),
        ),
        child: const Text(
          'Play Audio',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildNextButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/easy/buttefly/quiz');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff1c92ff),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(vertical: 12),
        ),
        child: const Text(
          'Next',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Future<void> _speak() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(storyText);
  }
}
