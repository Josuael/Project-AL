import 'package:flutter/material.dart';

class BromoIntroducePage extends StatefulWidget {
  final String courseTitle; // Add the courseTitle parameter

  const BromoIntroducePage({Key? key, required this.courseTitle})
      : super(key: key); // Updated constructor

  @override
  State<StatefulWidget> createState() => _IntroducePageState();
}

class _IntroducePageState extends State<BromoIntroducePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.courseTitle), // Use courseTitle here
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back, // Ikon default untuk tombol kembali
            size: 24,
            color: Colors.black, // Sesuaikan warna dengan tema aplikasi
          ),
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/splash/levels', // Arahkan ke halaman Introduction
            );
          },
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
                'The Origin of The Bromo Feast',
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
                'This legend recounts the origins of the Bromo Feast, celebrated annually by Hindus in the Tengger Mountains of Java. '
                'It tells the story of Kyai Kesunia and Nyai Kesuma, a devoted couple who prayed to Brahma for a child. After a divine '
                'messenger granted them a son, they were later tested by Brahma to offer him as a sacrifice. Their faithfulness was rewarded, '
                'and their son’s life was spared. In gratitude, the couple initiated the Bromo Feast, offering their best gifts to Brahma—a '
                'tradition that continues to this day.',
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
                  'Introduction', '01', 'assets/images/continue.png', () {
                Navigator.pushNamed(context, '/easy/bromo/introduction');
              }),
              _buildContentItem('Reading', '02', 'assets/images/continue.png',
                  () {
                Navigator.pushNamed(context, '/easy/bromo/reading');
              }),
              _buildContentItem('Listening', '03', 'assets/images/continue.png',
                  () {
                Navigator.pushNamed(context, '/easy/bromo/listening');
              }),
              _buildContentItem('Quiz', '04', 'assets/images/continue.png', () {
                Navigator.pushNamed(context, '/easy/bromo/quiz');
              }),
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
