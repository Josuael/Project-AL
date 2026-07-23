import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:cultulingo/intermediate/jars/quiz9.dart';

class JarsQuiz8Page extends StatefulWidget {
  final int score;

  const JarsQuiz8Page({Key? key, required this.score}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Quiz8Page();
}

class _Quiz8Page extends State<JarsQuiz8Page> {
  final int correctAnswerIndex = 0;
  int? selectedAnswerIndex;
  int score = 0;
  final AudioPlayer _audioPlayer = AudioPlayer();

  // Daftar opsi jawaban
  final List<String> answerOptions = ['Arrogant', 'Modest', 'Kind', 'Generous'];

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  Future<void> _playAudio() async {
    await _audioPlayer.play(AssetSource('audio/quizjars8.mp3'));
  }

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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _textTheme(
                        'Find the synonym according to the audio.',
                        16,
                        'Inter-Regular',
                        TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: _playAudio,
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors.blue, // Button background color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: _textTheme(
                          'Play Audio',
                          18,
                          'Inter-Bold',
                          TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 20),
                      for (var i = 0; i < answerOptions.length; i++)
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedAnswerIndex = i;
                              if (selectedAnswerIndex == correctAnswerIndex) {
                                score = widget.score + 10;
                              } else {
                                score = widget.score;
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => JarsQuiz9Page(score: score),
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
