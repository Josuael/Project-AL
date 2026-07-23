import 'package:flutter/material.dart';
import 'package:cultulingo/easy/pasopati/quiz4.dart'; // Import halaman Quiz 3

class PasopatiQuiz3Page extends StatefulWidget {
  final int score; // Menambahkan parameter score dari Quiz 1

  const PasopatiQuiz3Page({super.key, required this.score});

  @override
  State<StatefulWidget> createState() => _Quiz3Page();
}

class _Quiz3Page extends State<PasopatiQuiz3Page> {
  final int correctAnswerIndex =
      2; // Jawaban yang benar adalah indeks 2 (A Hermit)
  int? selectedAnswerIndex;
  int score = 0; // Variabel untuk menyimpan skor dari Quiz 2

  // Daftar opsi jawaban
  final List<String> answerOptions = ['Ruler', 'Loser', 'Victor', 'Partner'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xfff6f8fc),
        child: Stack(
          children: [
            _imageAsset('assets/images/back.png', 24, 24, 19, 32),
            _imageAsset('assets/images/menu.png', 24, 24, 362, 32),

            Positioned(
              left: 29,
              top: 114,
              child: _textTheme('Quiz', 20, 'Inter-SemiBold', TextAlign.left),
            ),

            // Container untuk pertanyaan dan opsi jawaban
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
                      // Teks pertanyaan
                      _textTheme(
                        'The word conqueror in "He bowed his head before his conqueror" is closest in meaning to:',
                        20, // Ukuran font
                        'Inter-Bold',
                        TextAlign.left,
                      ),
                      const SizedBox(
                          height: 20), // Spasi antara pertanyaan dan jawaban

                      // Opsi jawaban
                      for (var i = 0; i < answerOptions.length; i++)
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedAnswerIndex = i;
                              if (selectedAnswerIndex == correctAnswerIndex) {
                                score = widget.score +
                                    10; // Skor 10 jika jawaban benar
                              } else {
                                score = widget.score; // Skor 0 jika salah
                              }
                            });
                          },
                          child: _container(
                            selectedAnswerIndex == i
                                ? (i == correctAnswerIndex
                                    ? Colors.green
                                    : Colors
                                        .red) // Hijau jika benar, merah jika salah
                                : const Color(0xffbfcbf5), // Warna default
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
                                  answerOptions[
                                      i], // Gunakan daftar opsi jawaban
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

            // Tombol "Next" untuk menuju Quiz 3
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
                      int totalScore = widget.score +
                          score; // Tambahkan skor Quiz 1 dan Quiz 2
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PasopatiQuiz4Page(
                              score: totalScore), // Kirim total skor ke Quiz 3
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

  // Fungsi untuk menampilkan gambar
  Widget _imageAsset(
    String asset,
    double width,
    double height,
    double left,
    double top, {
    BoxFit fit = BoxFit.contain,
  }) {
    return Positioned(
      left: left,
      width: width,
      top: top,
      height: height,
      child: Image.asset(asset, width: width, height: height, fit: fit),
    );
  }

  // Fungsi untuk menampilkan teks
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

  // Fungsi untuk membuat container
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
