import 'package:flutter/material.dart';

class SumatranIntroducePage extends StatefulWidget {
  final String courseTitle; // Add the courseTitle parameter

  const SumatranIntroducePage({Key? key, required this.courseTitle})
      : super(key: key); // Updated constructor

  @override
  State<StatefulWidget> createState() => _IntroducePageState();
}

class _IntroducePageState extends State<SumatranIntroducePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.courseTitle), // Use courseTitle here
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {
              // Handle menu action
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xfff6f8fc),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Judul
              const Text(
                'Easy',
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
              const SizedBox(height: 4),
              const Text(
                'An Old Sumateran Legend',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Inter-SemiBold',
                ),
              ),
              const SizedBox(height: 16),

              // Gambar
              Image.asset('assets/images/banner2.png', fit: BoxFit.cover),

              const SizedBox(height: 16),

              // Deskripsi
              const Text(
                'About Course',
                style: TextStyle(fontSize: 16, fontFamily: 'Inter-Bold'),
              ),
              const SizedBox(height: 8),
              const Text(
                'This legend tells the story of an old hermit who lived in a cave in the forest of Sumatra. When a severe drought '
                'struck the land, he sought help from a nearby village, receiving a handful of rice. Despite his gratitude, the villagers '
                'grew weary of his requests for more food. In desperation, the hermit learned to cultivate his own rice paddy with the help '
                'of a mysterious stranger. His paddy flourished, providing endless rice for both himself and the villagers. However, after '
                'expressing his frustration at the never-ending harvest, the rice withered, and the paddy transformed into a wilderness. '
                'The villagers, drawn by the promise of endless rice, found only a rock where the shed had once stood, learning a valuable '
                'lesson about greed and gratitude.',
                style: TextStyle(fontSize: 13, fontFamily: 'Inter-Light'),
              ),
              const SizedBox(height: 24),

              // Konten Section
              const Text(
                'Course Content',
                style: TextStyle(fontSize: 16, fontFamily: 'Inter-Bold'),
              ),
              const SizedBox(height: 16),

              // Daftar Konten
              _buildContentItem(
                'Introduction',
                '01',
                'assets/images/continue.png',
                () {
                  Navigator.pushNamed(context, '/easy/sumateran/introduction');
                },
              ),
              _buildContentItem(
                'Reading',
                '02',
                'assets/images/continue.png',
                () {
                  Navigator.pushNamed(context, '/easy/sumateran/reading');
                },
              ),
              _buildContentItem(
                'Listening',
                '03',
                'assets/images/continue.png',
                () {
                  Navigator.pushNamed(context, '/easy/sumateran/listening');
                },
              ),
              _buildContentItem(
                'Quiz',
                '04',
                'assets/images/continue.png',
                () {
                  Navigator.pushNamed(context, '/easy/sumateran/quiz');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget untuk membangun setiap konten kursus
  Widget _buildContentItem(
      String title, String number, String image, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    number,
                    style: const TextStyle(
                      fontSize: 25,
                      fontFamily: 'Inter-Bold',
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'Inter-Medium',
                    ),
                  ),
                ],
              ),
              Image.asset(image, width: 24, height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
