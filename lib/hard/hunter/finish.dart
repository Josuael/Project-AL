import 'package:cultulingo/hard/hunter/introduce.dart';
import 'package:flutter/material.dart';

class HunterFinishPage extends StatelessWidget {
  final int score;

  const HunterFinishPage({required this.score, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              left: 29,
              top: 114,
              child: const Text(
                'Quiz',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff000000),
                  fontFamily: 'Inter-SemiBold',
                ),
              ),
            ),
            Positioned(
              left: 19,
              top: 32,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  'assets/images/back.png',
                  width: 24,
                  height: 24,
                ),
              ),
            ),
            Positioned(
              left: 59,
              top: 290,
              child: Container(
                width: 275,
                height: 238,
                decoration: BoxDecoration(
                  color: const Color(0xffbfcbf5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Your Score is',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color(0xff000000),
                          fontFamily: 'Inter-Bold',
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '$score', // Display the dynamic score
                        style: const TextStyle(
                          fontSize: 40,
                          color: Color(0xff000000),
                          fontFamily: 'Inter-Bold',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 59,
              top: 546,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HunterIntroducePage(
                            courseTitle: 'Introduce')),
                    (route) => false,
                  ); // Navigate to intro and remove all previous pages from stack
                },
                child: Container(
                  width: 275,
                  height: 43,
                  decoration: BoxDecoration(
                    color: const Color(0xffbfcbf5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text(
                      'Finish',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xff000000),
                        fontFamily: 'Inter-Bold',
                      ),
                      textAlign: TextAlign.center,
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
}
