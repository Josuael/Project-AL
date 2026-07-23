import 'package:flutter/material.dart';

class LevelsPage extends StatefulWidget {
  const LevelsPage({super.key});

  @override
  State<StatefulWidget> createState() => _LevelsPageState();
}

class _LevelsPageState extends State<LevelsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f8fc),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              // Header
              _buildHeader(),
              const SizedBox(height: 30),
              // Banner
              _buildBanner(),
              const SizedBox(height: 30),
              // Easy Courses Section
              _buildSection('Easy Courses', [
                _courseCard(
                  'The Legend of Pasopati',
                  '4 Lessons',
                  'assets/images/pasopati.png',
                  () =>
                      Navigator.pushNamed(context, '/easy/pasopati/introduce'),
                ),
                _courseCard(
                  'The Golden Butterfly',
                  '4 Lessons',
                  'assets/images/butterfly.jpg',
                  () =>
                      Navigator.pushNamed(context, '/easy/butterfly/introduce'),
                ),
                _courseCard(
                  'The Origin of the Bromo Feast',
                  '4 Lessons',
                  'assets/images/bromo.jpg',
                  () => Navigator.pushNamed(context, '/easy/bromo/introduce'),
                ),
                _courseCard(
                  'An Old Sumateran Legend',
                  '4 Lessons',
                  'assets/images/sumateran.png',
                  () =>
                      Navigator.pushNamed(context, '/easy/sumateran/introduce'),
                ),
              ]),
              const SizedBox(height: 30),
              // Intermediate Courses Section
              _buildSection('Intermediate Courses', [
                _courseCard(
                  'The Little Sawah',
                  '4 Lessons',
                  'assets/images/sawah.png',
                  () => Navigator.pushNamed(
                      context, '/intermediate/sawah/introduce'),
                ),
                _courseCard(
                  'The Holy Mountain',
                  '4 Lessons',
                  'assets/images/mountain.png',
                  () => Navigator.pushNamed(
                      context, '/intermediate/mountain/introduce'),
                ),
                _courseCard(
                  'The Origin of Water Jars',
                  '4 Lessons',
                  'assets/images/jars.png',
                  () => Navigator.pushNamed(
                      context, '/intermediate/jars/introduce'),
                ),
                _courseCard(
                  'The Saga of the Waru Wanggi',
                  '4 Lessons',
                  'assets/images/waru.png',
                  () => Navigator.pushNamed(
                      context, '/intermediate/waru/introduce'),
                ),
              ]),
              const SizedBox(height: 30),
              // Hard Courses Section
              _buildSection('Hard Courses', [
                _courseCard(
                  'The Clever Squirrel',
                  '4 Lessons',
                  'assets/images/squirrel.png',
                  () =>
                      Navigator.pushNamed(context, '/hard/squirrel/introduce'),
                ),
                _courseCard(
                  'The Mighty Hunter',
                  '4 Lessons',
                  'assets/images/hunter.png',
                  () => Navigator.pushNamed(context, '/hard/hunter/introduce'),
                ),
                _courseCard(
                  'The Legend of The Karang',
                  '4 Lessons',
                  'assets/images/karang.png',
                  () => Navigator.pushNamed(context, '/hard/karang/introduce'),
                ),
                _courseCard(
                  'Why There Are No Tigers in Borneo',
                  '4 Lessons',
                  'assets/images/tigers.png',
                  () => Navigator.pushNamed(context, '/hard/borneo/introduce'),
                ),
              ]),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  // Builds the header with user info and profile picture
  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Hello',
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
            SizedBox(height: 4),
            Text(
              'Student',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Inter-SemiBold',
                color: Colors.black,
              ),
            ),
          ],
        ),
        Image.asset(
          'assets/profile.png',
          width: 60,
          height: 60,
        ),
      ],
    );
  }

  // Builds the banner image
  Widget _buildBanner() {
    return Image.asset(
      'assets/banner.png',
      width: 338,
      height: 143,
      fit: BoxFit.cover,
    );
  }

  // Function to build course section with title and course cards
  Widget _buildSection(String title, List<Widget> courses) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle(title),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...courses.map((course) => Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: course,
                  )),
            ],
          ),
        ),
      ],
    );
  }

  // Function to build section titles
  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontFamily: 'Inter-Bold',
        color: Colors.black,
      ),
    );
  }

  // Function to build course card with image, title, and subtitle
  Widget _courseCard(
      String title, String subtitle, String imagePath, Function()? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 160,
        height: 180, // Adjusted height for image and text
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image at the top
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 8), // Space between image and text
            // Title and subtitle below the image
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 12,
                      fontFamily: 'Inter-Bold',
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 9,
                      fontFamily: 'Inter-Light',
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
