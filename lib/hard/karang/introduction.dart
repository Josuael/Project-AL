import 'package:flutter/material.dart';

class KarangIntroductionPage extends StatelessWidget {
  final String courseTitle;

  const KarangIntroductionPage({Key? key, required this.courseTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Mengambil ukuran layar
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xfff6f8fc),
          padding: const EdgeInsets.symmetric(
              horizontal: 24), // Padding seimbang di kiri dan kanan
          child: Stack(
            children: [
              Positioned(
                left: 10,
                top: 10,
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back, // Ikon default untuk tombol kembali
                    size: 24,
                    color: Colors.black, // Sesuaikan warna dengan tema aplikasi
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/hard/karang/introduce', // Arahkan ke halaman Introduction
                    );
                  },
                ),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: IconButton(
                  icon: Image.asset(
                    'assets/images/menu.png',
                    width: 24,
                    height: 24,
                  ),
                  onPressed: () {
                    // Aksi ketika tombol menu ditekan
                  },
                ),
              ),

              // Title
              Positioned(
                left: 24,
                top: 80, // Top relative to screen size
                child: Text(
                  'Introduction',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color(0xff000000),
                    fontFamily: 'Inter-SemiBold',
                  ),
                ),
              ),

              // Content
              Positioned(
                left: 0,
                right: 0,
                top: 140, // Adjust based on screen
                bottom: 90, // Allow space for the button
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'The Tale of Hanomat, King of Monkeys, tells the story of how the mighty Hanomat, son of the wind-god, attempted to build two islands in the Sunda Straits, only to discover that the task had been completed by another god. In his anger, he created two great mountains. As his people, the monkeys, climbed the tallest mountain, they began teasing and biting the stars. The gods, troubled by this mischief, eventually ordered Hanomat to snip off a portion of the mountain to stop the monkeys from reaching the heavens.',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        color: const Color(0xff000000),
                        fontFamily: 'Inter-Light',
                      ),
                    ),
                  ),
                ),
              ),

              // Next Button
              Positioned(
                left: 0,
                right: 0,
                bottom: 16,
                child: GestureDetector(
                  onTap: () {
                    // Navigasi ke halaman selanjutnya
                    Navigator.pushNamed(context, '/hard/karang/reading');
                  },
                  child: Container(
                    width:
                        size.width * 0.9, // Button occupies 90% of screen width
                    height: 50,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: const Color(0xff1c92ff),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Center(
                      child: Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 16,
                          color: const Color(0xffffffff),
                          fontFamily: 'Inter-Bold',
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // Indicator
              Positioned(
                left: 24,
                top: 73,
                child: Row(
                  children: [
                    Container(
                      width: size.width * 0.15,
                      height: 6,
                      decoration: BoxDecoration(
                        color: const Color(0xff1c92ff),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(width: 5), // Space between indicators
                    ...List.generate(4, (index) {
                      return Container(
                        width: size.width * 0.15,
                        height: 6,
                        margin: const EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                          color: index == 0
                              ? const Color(0xffd6dcf2)
                              : const Color(0xffd6dee5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
