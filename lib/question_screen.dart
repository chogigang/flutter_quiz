import 'package:flutter/material.dart';
import 'package:flutter_quiz/answer_button.dart';
import 'package:flutter_quiz/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQustion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      //질문 인덱스를 증가시킬 변수
      currentQuestionIndex += 1;
    });
  }

  @override
  Widget build(context) {
    final currentQustion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQustion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 205, 153, 235),
                fontSize: 24,
                fontWeight: FontWeight.bold, //FontWeight.bold 글꼴 두께를 굵게 하는 것
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30), // 여백용
            ...currentQustion.getShuffledAnswers().map((answer) {
              // ... Spread 연산자   리스트나 맵 등의 컬렉션을 펼치는 데 사용
              return AnswerButton(
                answerText: answer,
                onTap: () {
                  answerQustion(
                      answer); //그냥 온탭으로 보내기엔 이값은 문자열로 값을 보내야하는대 오류가 걸린다 그걸 익명함수 (){} 로 처리해서 ontap 으로넘긴다
                },
              );
            }),
            // const SizedBox(height: 30), // 여백용
            // AnswerButton(answerText: currentQustion.answrs[0], onTap: () {}),
            // const SizedBox(height: 10), // 여백용
            // AnswerButton(answerText: currentQustion.answrs[1], onTap: () {}),
            // const SizedBox(height: 10), //여백용
            // AnswerButton(answerText: currentQustion.answrs[2], onTap: () {}),
            // const SizedBox(height: 10), //여백용
            // AnswerButton(answerText: currentQustion.answrs[3], onTap: () {}),
          ],
        ),
      ),
    );
  }
}
