import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        //자식(Child) 위젯이 화면에 모두 표시되지 않을 때 스크롤 가능한 단일 방향(수평 또는 수직) 스크롤 영역을 제공하는 Flutter의 위젯
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  Text(
                    ((data['question_index'] as int) + 1).toString(),
                  ),
                  Expanded(
                    // Expanded UI 상 남는 공간이 없게 화면을 꽉 채우고 싶을 때 ,특정 컴포넌트들을 폰 화면 넓이에 맞게 비율로 적용하고 싶을 때
                    child: Column(
                      children: [
                        Text(data['question'] as String),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(data['user_answer'] as String),
                        Text(data['correct_answer'] as String),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
