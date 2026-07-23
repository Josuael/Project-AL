import 'package:flutter/material.dart';

class MountainIntroducePage extends StatefulWidget {
  final String courseTitle; // Add the courseTitle parameter

  const MountainIntroducePage({Key? key, required this.courseTitle})
      : super(key: key); // Updated constructor

  @override
  State<StatefulWidget> createState() => _MountainIntroducePageState();
}

class _MountainIntroducePageState extends State<MountainIntroducePage> {
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
              // Handle menu action, e.g., show a menu or navigation drawer
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
              // Title Section
              const Text(
                'Intermediate',
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
              const SizedBox(height: 4),
              const Text(
                'The Holly Mountain',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Inter-SemiBold',
                ),
              ),
              const SizedBox(height: 16),

              // Image Section
              Image.asset('assets/images/banner2.png', fit: BoxFit.cover),
              const SizedBox(height: 16),

              // About Course Section
              const Text(
                'About Course',
                style: TextStyle(fontSize: 16, fontFamily: 'Inter-Bold'),
              ),
              const SizedBox(height: 8),
              _buildCourseDescription(),
              const SizedBox(height: 24),

              // Course Content Section
              const Text(
                'Course Content',
                style: TextStyle(fontSize: 16, fontFamily: 'Inter-Bold'),
              ),
              const SizedBox(height: 16),

              // List of Content
              _buildContentItem(
                'Introduction',
                '01',
                'assets/images/continue.png',
                () {
                  Navigator.pushNamed(
                      context, '/intermediate/mountain/introduction');
                },
              ),
              _buildContentItem(
                'Reading',
                '02',
                'assets/images/continue.png',
                () {
                  Navigator.pushNamed(
                      context, '/intermediate/mountain/reading');
                },
              ),
              _buildContentItem(
                'Listening',
                '03',
                'assets/images/continue.png',
                () {
                  Navigator.pushNamed(
                      context, '/intermediate/mountain/listening');
                },
              ),
              _buildContentItem(
                'Quiz',
                '04',
                'assets/images/continue.png',
                () {
                  Navigator.pushNamed(context, '/intermediate/mountain/quiz');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget to build the course description
  Widget _buildCourseDescription() {
    return const Text(
      'This legend tells the story of a powerful giant who ruled over Smeru, Indra\'s holy mountain, and had a beautiful daughter he loved more than anything. He kept her hidden, watching over her day and night. One morning, driven by curiosity, Dewi Jurangga left her father\'s kingdom to see the world outside. Blinded at first by the bright daylight, she soon became enchanted by the beauty of the rice fields and meadows. \n\n'
      'While wandering, she met a young man who looked like her father but was younger and handsomer. He introduced himself as the son of a giant and a raksasa appointed by Brahma to guard the temple of the gods. Dewi Jurangga expressed her desire to stay on Earth forever, even if it meant giving up her immortality. However, she could never marry him because her father would never approve of a union with a raksasa, especially one related to Bromo, who had destroyed her father’s fields with fire and lava.\n\n'
      'Determined, the raksasa decided to seek the mountain giant’s approval. Upon asking for Dewi Jurangga’s hand, the mountain giant was furious but realized that refusing could provoke Bromo’s wrath further. He proposed a challenge: if the raksasa could create a sea of sand around Bromo in one night, he could have Dewi Jurangga as his wife. \n\n'
      'The raksasa accepted the challenge, and with Dewi Jurangga’s encouragement, he began to work tirelessly as night fell. He scooped sand with great fervor, ignoring Bromo’s attempts to thwart him. As dawn approached, he was almost finished, but the mountain giant, desperate to save his daughter, decided to trick him by crowing like a cock to signal daybreak.\n\n'
      'The raksasa, hearing the crowing, panicked and threw down his last batok (coconut shell) filled with sand in despair, only to be turned to stone as his father had predicted. Dewi Jurangga, horrified by the turn of events, also turned to stone, becoming a mountain known as Kembang. The mountain giant, in his grief and fear, also transformed into a mountain, sighing and moaning for eternity, with the smoke from his sorrow blanketing the skies. Thus, the tale of love, sacrifice, and the consequences of greed unfolded in the land of Smeru.',
      style: TextStyle(fontSize: 13, fontFamily: 'Inter-Light'),
    );
  }

  // Widget to build each course content item
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
