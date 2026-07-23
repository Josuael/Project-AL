import 'package:flutter/material.dart';

class SquirrelIntroductionPage extends StatelessWidget {
  final String courseTitle;

  const SquirrelIntroductionPage({Key? key, required this.courseTitle})
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
                      '/hard/squirrel/introduce', // Arahkan ke halaman Introduction
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
                      'The story tells of a man who, while walking through a dense forest, encounters a trapped snake asking for help. Despite the snake\'s promise not to harm him, once freed, the snake coils around the man\'s neck and threatens to kill him. The snake justifies this by claiming that on earth, good deeds are often repaid with evil. The man, desperate for a way out, asks for the opinion of a palm tree, a brook, and finally, a clever squirrel. The squirrel devises a plan, and the man manages to escape and kill the snake.',
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
                    Navigator.pushNamed(context, '/hard/squirrel/reading');
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
