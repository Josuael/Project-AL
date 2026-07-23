import 'package:flutter/material.dart';

class HunterIntroducePage extends StatefulWidget {
  final String courseTitle; // Add the courseTitle parameter

  const HunterIntroducePage({Key? key, required this.courseTitle})
      : super(key: key); // Updated constructor

  @override
  State<StatefulWidget> createState() => _IntroducePageState();
}

class _IntroducePageState extends State<HunterIntroducePage> {
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
                'Hard',
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
              const SizedBox(height: 4),
              const Text(
                'The Mighty Hunter',
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
                'This tale from Javanese folklore follows the life of Kawitjaksana, a pious and wise hermit who lived on a sacred mountain where the legendary waru tree grows. Kawitjaksana, known for his humility and insight, was targeted by envious hermits who tried to kill him. In a moment of desperation, he prayed to Brahma, and a miracle occurred—a snake transformed into a waru tree, saving him. This act of divine intervention not only protected Kawitjaksana but also revealed his true greatness to the other hermits. The waru tree, central to the legend, symbolizes strength and protection, and its wood is believed to possess extraordinary powers, especially in times of conflict.',
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
                  Navigator.pushNamed(context, '/hard/hunter/introduction');
                },
              ),
              _buildContentItem(
                'Reading',
                '02',
                'assets/images/continue.png',
                () {
                  Navigator.pushNamed(context,
                      '/hard/hunter/reading'); // Handle Reading navigation
                },
              ),
              _buildContentItem(
                'Listening',
                '03',
                'assets/images/continue.png',
                () {
                  Navigator.pushNamed(context,
                      '/hard/hunter/listening'); // Handle Listening navigation
                },
              ),
              _buildContentItem(
                'Quiz',
                '04',
                'assets/images/continue.png',
                () {
                  Navigator.pushNamed(
                      context, '/hard/hunter/quiz'); // Handle Quiz navigation
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
