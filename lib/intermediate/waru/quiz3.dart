import 'package:flutter/material.dart'; // Halaman Finish
import 'package:cultulingo/intermediate/waru/quiz4.dart'; // Import halaman Quiz 2

class WaruQuiz3Page extends StatefulWidget {
  final int score;

  const WaruQuiz3Page({Key? key, required this.score}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Quiz3Page();
}

class _Quiz3Page extends State<WaruQuiz3Page> {
  final int correctAnswerIndex =
      2; // Misalkan jawaban yang benar adalah indeks 2
  int? selectedAnswerIndex;
  int score = 0; // Variabel untuk melacak skor

  // Daftar opsi jawaban
  final List<String> answerOptions = ['sorrow', 'fear', 'joy', 'silence'];

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
                        'The appearance of new waru trees on the holy mountain is greeted with _____ by the villagers.',
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
                          builder: (context) => WaruQuiz4Page(score: score),
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
