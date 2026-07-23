import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class BorneoListeningPage extends StatefulWidget {
  final String courseTitle; // Add this line to define the courseTitle field

  BorneoListeningPage(
      {super.key, required this.courseTitle}); // Update the constructor

  @override
  State<StatefulWidget> createState() => _ListeningPage();
}

class _ListeningPage extends State<BorneoListeningPage> {
  final FlutterTts flutterTts = FlutterTts();

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
              _buildHeader(context),
              _buildTitle(),
              _buildContent(),
              _buildNextButton(),
              _buildPlayAudioButton(),
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
              '/hard/borneo/reading'); // Arahkan ke halaman Introduction
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
        'Listening',
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
          children: [
            Text(
              'Though tigers prowl the jungles of Java and Sumatra and many other islands of Indonesia, there are none in the forests of Borneo. An old folk story tells the reason for this.\n\n'
              'It seems that the Rajah of All the Tigers, who lived in Java, found that food was becoming so scarce that he and his subjects were threatened with starvation. So, he decided to send word to the inhabitants of Borneo that they must send him food, or he would come with his army and conquer the land.\n\n'
              'He selected three messengers to carry his ultimatum to Borneo. They traveled over the sea and arrived on the island, weary and hot. They searched everywhere for the Rajah of Borneo but could not find him. When they were about to give up, they met a tiny mouse-deer.\n\n'
              '"Where is your Rajah?" the tigers demanded. "We have an important message to deliver to him."\n\n'
              '"He is hunting," the mouse-deer replied. "What is your important message?"\n\n'
              '"We bring word from our Rajah that your ruler must surrender. Take us to your Rajah so that we can deliver our message."\n\n'
              'The mouse-deer thought quickly. "Would it not be better if you rested here in the shade, after your long journey, and let me carry the message for you? I promise to find the Rajah and deliver your message promptly, and I will bring you his answer."\n\n'
              'The messengers looked at one another and decided, since it was so hot and they were tired, to let the mouse-deer do as he suggested.\n\n'
              '"Very well," said the spokesman, "but be quick about it. Go and tell him that the Rajah of All the Tigers demands food in great quantities, which we shall specify. It must be given to us at once, or our Rajah will send his army to destroy you. What is more," he said, stepping forward and nearly knocking down the tiny mouse-deer, "give him this, as a token of our Rajah\'s might." He drew out a tiger\'s whisker and gave it to the mouse-deer.\n\n'
              '"This is from the royal face," he said importantly. "The Rajah himself plucked it from his whiskers, to show how strong he is."\n\n'
              'The mouse-deer took the royal whisker and held it away from him. "It is very large," he said in a tiny voice. "Your Rajah must be strong and fierce."\n\n'
              '"Begone!" said the messenger imperiously. "We will wait, but not too long."\n\n'
              'The mouse-deer turned and fled. His thoughts raced as he ran. If the Rajah of All the Tigers in Java needed food, he must be desperate for meat. "I am meat," thought the little mouse-deer, "and so are all the creatures on Borneo. If the Rajah of All the Tigers sends an army, he will destroy us all... and then he will remain in Borneo. I must think!"\n\n'
              'He ran through the woods and leaped over streams. Suddenly there was a rustling sound in the leaves, and his quick eyes spied his friend, the porcupine.\n\n'
              'The porcupine peered up at him. "What is your hurry, kanchil?" he asked. "It is too hot to run so fast."\n\n'
              '"I am worried... but seeing you has solved my problem. Give me one of your quills, friend, and save Borneo for all of us!"\n\n'
              '"I’ll gladly give you a quill," said the porcupine. "Surely I have enough and can spare at least one for my good friend, the mouse-deer. But can’t you tell me why you need it?"\n\n'
              '"Later," said the mouse-deer. "You are a good friend indeed. You have saved our country."\n\n'
              'And off he bounded, bearing the quill in his teeth. He ran as fast as he could back to the spot where he had left the tigers. They were pacing back and forth, looking annoyed and fierce.\n\n'
              '"Well, you\'ve been gone a long time!" the oldest one cried angrily.\n\n'
              '"I had to find our Rajah," said the mouse-deer breathlessly. "And I had to wait until he woke from his nap after hunting. Then I had to wait for an audience. And then I had to wait for his answer."\n\n'
              '"Well, what is it?" the messengers demanded. "Did you tell him what our Rajah said?"\n\n'
              '"Word for word, as you told it to me," the mouse-deer answered. "I told him that your Rajah demanded food at once, and surrender, or he would come with his great army and destroy us."\n\n'
              '"Yes, yes. And he said...?"\n\n'
              'The mouse-deer replied, "He said, \'Very well, let the Rajah of All the Tigers in Java come and fight us. He will find that we can fight better than he. In fact,\' he said, \'I am weary of peace and would welcome a battle in which we could prove our might once more.\'"\n\n'
              '"Did you give him the whisker from the royal face?" the oldest tiger asked.\n\n'
              '"I gave it to him," the mouse-deer replied. "And do you see this whisker I hold in my teeth?"\n\n'
              '"Is that a whisker?" the tigers asked. "It is larger than you are, longer by a foot, and thicker than your leg!"\n\n'
              '"It is from the royal face of our Rajah," the mouse-deer said. He took the quill from his teeth and handed it to the oldest messenger. "Feel it; see how thick it is. Our Rajah plucked it from his face and said that I was to give it to you to take to your Rajah."\n\n'
              '"Nothing more?" the messengers asked, turning pale.\n\n'
              '"Nothing more... Oh, are you going?"\n\n'
              'The oldest tiger said hurriedly, "We must return at once. Our Rajah waits for your Rajah\'s answer."\n\n'
              '"Of course. And it is hot here, and you have a long way to go. Be sure to take good care of the whisker... although, if need be, our Rajah can always send another one."\n\n'
              'The oldest tiger took the big quill carefully in his paws, and all the messengers started back to Java. They crossed the land and then the water and then the land again, and came at last to the spot where their Rajah waited impatiently.\n\n'
              '"You have been gone far too long," the Rajah rumbled in his throat. "What word do you bring?"\n\n'
              'The messengers trembled at the terrible tone of his voice, thinking of the message they had to deliver. They looked to the oldest one, and he swallowed hard and said, "Oh mighty one, the miserable Rajah of Borneo said he would welcome war and sent you this."\n\n'
              'He stepped forward fearfully and held out the big, thick quill of the porcupine. "It comes from his royal face," he quavered.\n\n'
              'The Rajah of All the Tigers in Java gazed at it long and hard, stroking his own whiskers the while. He could not help feeling the difference. He said nothing for a long time.\n\n'
              'Then he looked blandly at the trembling messengers. "I have decided," he said, "that it would be better to demand food from the elephants of Sumatra."\n\n'
              'Whether the elephants of Sumatra ever sent the food, the story does not tell, but it is a fact that from that day to this, there have been no tigers in Borneo.',
              textAlign: TextAlign.left,
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 18,
                color: Color(0xff000000),
                fontFamily: 'Inter-Light',
                fontWeight: FontWeight.normal,
              ),
              maxLines: null,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlayAudioButton() {
    return Positioned(
      left: 24,
      width: 345,
      bottom: 80,
      child: ElevatedButton(
        onPressed: () => _speak(),
        child: Text(
          'Play Audio',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontFamily: 'Inter-Bold',
            fontWeight: FontWeight.normal,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff1c92ff),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
        ),
      ),
    );
  }

  // Fungsi untuk Text-to-Speech
  Future<void> _speak() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        'Though tigers prowl the jungles of Java and Sumatra and many other islands of Indonesia, there are none in the forests of Borneo. An old folk story tells the reason for this.\n\n'
        'It seems that the Rajah of All the Tigers, who lived in Java, found that food was becoming so scarce that he and his subjects were threatened with starvation. So, he decided to send word to the inhabitants of Borneo that they must send him food, or he would come with his army and conquer the land.\n\n'
        'He selected three messengers to carry his ultimatum to Borneo. They traveled over the sea and arrived on the island, weary and hot. They searched everywhere for the Rajah of Borneo but could not find him. When they were about to give up, they met a tiny mouse-deer.\n\n'
        '"Where is your Rajah?" the tigers demanded. "We have an important message to deliver to him."\n\n'
        '"He is hunting," the mouse-deer replied. "What is your important message?"\n\n'
        '"We bring word from our Rajah that your ruler must surrender. Take us to your Rajah so that we can deliver our message."\n\n'
        'The mouse-deer thought quickly. "Would it not be better if you rested here in the shade, after your long journey, and let me carry the message for you? I promise to find the Rajah and deliver your message promptly, and I will bring you his answer."\n\n'
        'The messengers looked at one another and decided, since it was so hot and they were tired, to let the mouse-deer do as he suggested.\n\n'
        '"Very well," said the spokesman, "but be quick about it. Go and tell him that the Rajah of All the Tigers demands food in great quantities, which we shall specify. It must be given to us at once, or our Rajah will send his army to destroy you. What is more," he said, stepping forward and nearly knocking down the tiny mouse-deer, "give him this, as a token of our Rajah\'s might." He drew out a tiger\'s whisker and gave it to the mouse-deer.\n\n'
        '"This is from the royal face," he said importantly. "The Rajah himself plucked it from his whiskers, to show how strong he is."\n\n'
        'The mouse-deer took the royal whisker and held it away from him. "It is very large," he said in a tiny voice. "Your Rajah must be strong and fierce."\n\n'
        '"Begone!" said the messenger imperiously. "We will wait, but not too long."\n\n'
        'The mouse-deer turned and fled. His thoughts raced as he ran. If the Rajah of All the Tigers in Java needed food, he must be desperate for meat. "I am meat," thought the little mouse-deer, "and so are all the creatures on Borneo. If the Rajah of All the Tigers sends an army, he will destroy us all... and then he will remain in Borneo. I must think!"\n\n'
        'He ran through the woods and leaped over streams. Suddenly there was a rustling sound in the leaves, and his quick eyes spied his friend, the porcupine.\n\n'
        'The porcupine peered up at him. "What is your hurry, kanchil?" he asked. "It is too hot to run so fast."\n\n'
        '"I am worried... but seeing you has solved my problem. Give me one of your quills, friend, and save Borneo for all of us!"\n\n'
        '"I’ll gladly give you a quill," said the porcupine. "Surely I have enough and can spare at least one for my good friend, the mouse-deer. But can’t you tell me why you need it?"\n\n'
        '"Later," said the mouse-deer. "You are a good friend indeed. You have saved our country."\n\n'
        'And off he bounded, bearing the quill in his teeth. He ran as fast as he could back to the spot where he had left the tigers. They were pacing back and forth, looking annoyed and fierce.\n\n'
        '"Well, you\'ve been gone a long time!" the oldest one cried angrily.\n\n'
        '"I had to find our Rajah," said the mouse-deer breathlessly. "And I had to wait until he woke from his nap after hunting. Then I had to wait for an audience. And then I had to wait for his answer."\n\n'
        '"Well, what is it?" the messengers demanded. "Did you tell him what our Rajah said?"\n\n'
        '"Word for word, as you told it to me," the mouse-deer answered. "I told him that your Rajah demanded food at once, and surrender, or he would come with his great army and destroy us."\n\n'
        '"Yes, yes. And he said...?"\n\n'
        'The mouse-deer replied, "He said, \'Very well, let the Rajah of All the Tigers in Java come and fight us. He will find that we can fight better than he. In fact,\' he said, \'I am weary of peace and would welcome a battle in which we could prove our might once more.\'"\n\n'
        '"Did you give him the whisker from the royal face?" the oldest tiger asked.\n\n'
        '"I gave it to him," the mouse-deer replied. "And do you see this whisker I hold in my teeth?"\n\n'
        '"Is that a whisker?" the tigers asked. "It is larger than you are, longer by a foot, and thicker than your leg!"\n\n'
        '"It is from the royal face of our Rajah," the mouse-deer said. He took the quill from his teeth and handed it to the oldest messenger. "Feel it; see how thick it is. Our Rajah plucked it from his face and said that I was to give it to you to take to your Rajah."\n\n'
        '"Nothing more?" the messengers asked, turning pale.\n\n'
        '"Nothing more... Oh, are you going?"\n\n'
        'The oldest tiger said hurriedly, "We must return at once. Our Rajah waits for your Rajah\'s answer."\n\n'
        '"Of course. And it is hot here, and you have a long way to go. Be sure to take good care of the whisker... although, if need be, our Rajah can always send another one."\n\n'
        'The oldest tiger took the big quill carefully in his paws, and all the messengers started back to Java. They crossed the land and then the water and then the land again, and came at last to the spot where their Rajah waited impatiently.\n\n'
        '"You have been gone far too long," the Rajah rumbled in his throat. "What word do you bring?"\n\n'
        'The messengers trembled at the terrible tone of his voice, thinking of the message they had to deliver. They looked to the oldest one, and he swallowed hard and said, "Oh mighty one, the miserable Rajah of Borneo said he would welcome war and sent you this."\n\n'
        'He stepped forward fearfully and held out the big, thick quill of the porcupine. "It comes from his royal face," he quavered.\n\n'
        'The Rajah of All the Tigers in Java gazed at it long and hard, stroking his own whiskers the while. He could not help feeling the difference. He said nothing for a long time.\n\n'
        'Then he looked blandly at the trembling messengers. "I have decided," he said, "that it would be better to demand food from the elephants of Sumatra."\n\n'
        'Whether the elephants of Sumatra ever sent the food, the story does not tell, but it is a fact that from that day to this, there have been no tigers in Borneo.');
  }

  // Tombol Next
  Widget _buildNextButton() {
    return Positioned(
      left: 0,
      width: 341,
      bottom: 20,
      height: 45,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/hard/borneo/quiz');
        },
        child: Text(
          'Next',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontFamily: 'Inter-Bold',
            fontWeight: FontWeight.normal,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff1c92ff), // Updated property
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
        ),
      ),
    );
  }
}
