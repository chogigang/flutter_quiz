import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_quiz/quize.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Opacity(  //1번째 방법
          //   //투명도
          //   opacity: 0.6, //투명도 정도
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),

          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(
                150, 255, 255, 255), //1번째 투명도 그후 rgb값 이 방법을 제일 추천한다.
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            '재미있게 플러터를 배워 봅시다!',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 251, 250, 250),
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            // child: const Text('시작!'),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
                '시작!'), // OutlinedButton.icon 은 child 대신 label을 사용해야함
          ),
        ],
      ),
    );
  }
}
