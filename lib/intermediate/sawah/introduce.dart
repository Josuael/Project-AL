import 'package:flutter/material.dart';

class SawahIntroducePage extends StatefulWidget {
  final String courseTitle;

  const SawahIntroducePage({Key? key, required this.courseTitle})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _SawahIntroducePageState();
}

class _SawahIntroducePageState extends State<SawahIntroducePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.courseTitle),
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
              // Title Section
              const Text(
                'Intermediate',
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
              const SizedBox(height: 4),
              const Text(
                'The Little Sawah',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Inter-SemiBold',
                ),
              ),
              const SizedBox(height: 16),

              // Image
              Image.asset('assets/images/banner2.png', fit: BoxFit.cover),
              const SizedBox(height: 16),

              // About Course Section
              const Text(
                'About Course',
                style: TextStyle(fontSize: 16, fontFamily: 'Inter-Bold'),
              ),
              const SizedBox(height: 8),
              const Text(
                'This legend narrates the tale of Dewi Jurangga, the beloved daughter of a powerful giant who ruled Smeru, Indra\'s holy mountain. Curiosity led her to explore the world outside her father\'s protective realm, where she encountered a handsome raksasa, the son of a giant and a guardian of the gods. Despite her desire to stay on Earth and her feelings for him, their union was forbidden by her father due to past grievances with Bromo. \n\nIn a desperate bid to win Dewi Jurangga’s hand, the raksasa sought her father’s approval. The mountain giant, angered yet cautious of Bromo’s wrath, proposed a daunting challenge: to create a sea of sand around Bromo within one night. With determination and the encouragement of Dewi Jurangga, the raksasa labored through the night. However, as dawn approached, the mountain giant tricked him by crowing like a rooster. \n\nPanicked, the raksasa dropped his last batok filled with sand, leading to his transformation into stone, alongside Dewi Jurangga. Their tragic fate resulted in the creation of Kembang Mountain, while the mountain giant also became a mountain, mourning for eternity. This tale unfolds themes of love, sacrifice, and the consequences of greed in the mystical land of Smeru.',
                style: TextStyle(fontSize: 13, fontFamily: 'Inter-Light'),
              ),
              const SizedBox(height: 24),

              // Course Content Section
              const Text(
                'Course Content',
                style: TextStyle(fontSize: 16, fontFamily: 'Inter-Bold'),
              ),
              const SizedBox(height: 16),

              // Course Content List
              _buildContentItem(
                title: 'Introduction',
                number: '01',
                image: 'assets/images/continue.png',
                onTap: () {
                  Navigator.pushNamed(
                      context, '/intermediate/sawah/introduction');
                },
              ),
              _buildContentItem(
                title: 'Reading',
                number: '02',
                image: 'assets/images/continue.png',
                onTap: () {
                  Navigator.pushNamed(context, '/intermediate/sawah/reading');
                },
              ),
              _buildContentItem(
                title: 'Listening',
                number: '03',
                image: 'assets/images/continue.png',
                onTap: () {
                  Navigator.pushNamed(context, '/intermediate/sawah/listening');
                },
              ),
              _buildContentItem(
                title: 'Quiz',
                number: '04',
                image: 'assets/images/continue.png',
                onTap: () {
                  Navigator.pushNamed(context, '/intermediate/sawah/quiz');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget to build each course content item
  Widget _buildContentItem({
    required String title,
    required String number,
    required String image,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
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
