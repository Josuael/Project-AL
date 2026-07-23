import 'package:flutter/material.dart';

class SquirrelQuizPage extends StatefulWidget {
  final String courseTitle;

  const SquirrelQuizPage({super.key, required this.courseTitle});

  @override
  State<StatefulWidget> createState() => _QuizPage();
}

class _QuizPage extends State<SquirrelQuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xfff6f8fc),
          ),
          child: Stack(
            children: [
              _imageAsset('assets/images/back.png', 24, 24, 19, 32),
              _imageAsset('assets/images/menu.png', 24, 24, 362, 32),

              // Menggunakan courseTitle
              _textTheme(widget.courseTitle, 20, 'Inter-SemiBold', 29, 114),

              Positioned.fill(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _imageAsset(
                        'assets/kebutuhan-cultulingo.png', 230, 169, 0, 0,
                        fit: BoxFit.cover),

                    const SizedBox(height: 20),

                    Container(
                      width: 275,
                      padding: const EdgeInsets.symmetric(
                          vertical: 40, horizontal: 20),
                      decoration: BoxDecoration(
                        color: const Color(0xffbfcbf5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          _textTheme('Let\'s Start \nthe Quiz!', 40,
                              'Inter-Bold', 0, 0),
                          const SizedBox(height: 10),
                          _textTheme(
                            'It\'s understandable, isn\'t it? Now it\'s time to take a quiz to practice what we\'ve learned.',
                            13,
                            'Inter-Light',
                            0,
                            0,
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 40),

                    // Tombol Start dengan fungsi navigasi
                    GestureDetector(
                      onTap: () {
                        // Navigasi ke halaman quiz1
                        Navigator.pushNamed(context, '/hard/squirrel/quiz1');
                      },
                      child: Container(
                        width: 200,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xffbfcbf5),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: _textTheme('Start', 30, 'Inter-Bold', 0, 0),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Extracted image widget
  Widget _imageAsset(
      String asset, double width, double height, double left, double top,
      {BoxFit fit = BoxFit.contain}) {
    return Image.asset(asset, width: width, height: height, fit: fit);
  }

  // Extracted text widget
  Widget _textTheme(String text, double fontSize, String fontFamily,
      double left, double top) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        decoration: TextDecoration.none,
        fontSize: fontSize,
        color: const Color(0xff000000),
        fontFamily: fontFamily,
        fontWeight: FontWeight.normal,
      ),
      maxLines: 9999,
      overflow: TextOverflow.ellipsis,
    );
  }
}
