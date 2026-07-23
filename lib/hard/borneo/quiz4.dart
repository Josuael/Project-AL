import 'package:flutter/material.dart'; // Halaman Finish
import 'package:cultulingo/hard/borneo/quiz5.dart'; // Import halaman Quiz 2

class BorneoQuiz4Page extends StatefulWidget {
  final int score;

  const BorneoQuiz4Page({Key? key, required this.score}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Quiz4Page();
}

class _Quiz4Page extends State<BorneoQuiz4Page> {
  final int correctAnswerIndex =
      1; // Misalkan jawaban yang benar adalah indeks 2
  int? selectedAnswerIndex;
  int score = 0; // Variabel untuk melacak skor

  // Daftar opsi jawaban
  final List<String> answerOptions = [
    'He was easily frightened by the idea of battle',
    'He cared more about food than war',
    'He was eager to fight but decided it was unnecessary',
    'He was more interested in making alliances than in fighting'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xfff6f8fc),
        child: Stack(
          children: [
            Positioned(
              left: 29,
              top: 114,
              child: _textTheme('Quiz', 20, 'Inter-SemiBold', TextAlign.left),
            ),
            Positioned(
              left: 33,
              top: 195,
              child: _container(
                const Color(0xffbfcbf5),
                328,
                461,
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(4, 4),
                    blurRadius: 4,
                  ),
                ],
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _textTheme(
                        'What does the Rajah of All the Tigers’ final decision to demand food from the elephants of Sumatra suggest about him?',
                        20,
                        'Inter-Bold',
                        TextAlign.left,
                      ),
                      const SizedBox(height: 20),
                      for (var i = 0; i < answerOptions.length; i++)
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedAnswerIndex = i;
                              // Tambahkan skor jika jawaban benar
                              if (selectedAnswerIndex == correctAnswerIndex) {
                                score = widget.score +
                                    10; // Update skor dari Quiz 1
                              } else {
                                score =
                                    widget.score; // Pertahankan skor jika salah
                              }
                            });
                          },
                          child: _container(
                            selectedAnswerIndex == i
                                ? (i == correctAnswerIndex
                                    ? Colors.green
                                    : Colors.red)
                                : const Color(0xffbfcbf5),
                            306,
                            52,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: const Color(0xff565656), width: 1),
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: _textTheme(
                                  answerOptions[i],
                                  20,
                                  'Inter-Bold',
                                  TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 33,
              top: 683,
              child: _container(
                const Color(0xffbfcbf5),
                328,
                52,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: const Color(0xff565656), width: 1),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      // Navigasi ke halaman quiz berikutnya dan kirim nilai skor
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BorneoQuiz5Page(score: score),
                        ),
                      );
                    },
                    child: _textTheme(
                      'Next',
                      20,
                      'Inter-Bold',
                      TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _textTheme(
    String text,
    double fontSize,
    String fontFamily,
    TextAlign textAlign,
  ) {
    return Text(
      text,
      textAlign: textAlign,
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

  Widget _container(
    Color color,
    double width,
    double height, {
    BorderRadius? borderRadius,
    List<BoxShadow>? boxShadow,
    Border? border,
    Widget? child,
  }) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius ?? BorderRadius.zero,
        boxShadow: boxShadow ?? [],
        border: border,
      ),
      child: child,
    );
  }
}
