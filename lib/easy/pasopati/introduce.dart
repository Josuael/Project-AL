import 'package:flutter/material.dart';

class PasopatiIntroducePage extends StatefulWidget {
  final String courseTitle;

  const PasopatiIntroducePage({Key? key, required this.courseTitle})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _IntroducePageState();
}

class _IntroducePageState extends State<PasopatiIntroducePage> {
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
              const Text(
                'Easy',
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
              const SizedBox(height: 4),
              const Text(
                'The Legend of Pasopati',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Inter-SemiBold',
                ),
              ),
              const SizedBox(height: 16),
              Image.asset('assets/images/banner2.png', fit: BoxFit.cover),
              const SizedBox(height: 16),
              const Text(
                'About Course',
                style: TextStyle(fontSize: 16, fontFamily: 'Inter-Bold'),
              ),
              const SizedBox(height: 8),
              const Text(
                'Tells of a magical arrow, gifted to Arjuna by the gods for his devotion. '
                'This powerful weapon, used in the battle of Kurukshetra, symbolizes Arjuna’s righteousness and victory over evil.',
                style: TextStyle(fontSize: 13, fontFamily: 'Inter-Light'),
              ),
              const SizedBox(height: 24),
              const Text(
                'Course Content',
                style: TextStyle(fontSize: 16, fontFamily: 'Inter-Bold'),
              ),
              const SizedBox(height: 16),
              // Updated content item for Introduction
              _buildContentItem(
                  'Introduction', '01', 'assets/images/continue.png', () {
                Navigator.pushNamed(context, '/easy/pasopati/introduction');
              }),
              _buildContentItem('Reading', '02', 'assets/images/continue.png',
                  () {
                Navigator.pushNamed(context, '/easy/pasopati/reading');
              }),
              _buildContentItem('Listening', '03', 'assets/images/continue.png',
                  () {
                Navigator.pushNamed(context, '/easy/pasopati/listening');
              }),
              _buildContentItem('Quiz', '04', 'assets/images/continue.png', () {
                Navigator.pushNamed(context, '/easy/pasopati/quiz');
              }),
            ],
          ),
        ),
      ),
    );
  }

  // Updated function to build each content item with navigation support
  Widget _buildContentItem(
      String title, String number, String image, Function()? onTap) {
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
