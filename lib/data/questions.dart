import 'package:flutter_quiz/models/quiz_question.dart';

const questions = [
  QuizQuestion('플러터의 UI의 주요 구성 요소는 뭘까?', [
    'Widgets',
    'Components',
    'Blocks',
    'Functions',
  ]),
  QuizQuestion('Flutter UI는 어떻게 구축되나요?', [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',
  ]),
  QuizQuestion(
    'StatefulWidget의 목적은 무엇인가요?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    'StatelessWidget과 StatefulWidget 중 어떤 위젯을 더 자주 사용해야 합니까?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'StatelessWidget에서 데이터를 변경하면 어떻게 되나요?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestion(
    'StatefulWidgets 내부의 데이터를 어떻게 업데이트해야 합니까?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
];
