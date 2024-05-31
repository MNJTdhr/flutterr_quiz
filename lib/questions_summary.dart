//questions summary
import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((data) {
        return Row(
          children: [
            Text(((data['question_index'] as int) + 1).toString()),
            Column(children: [
              Text(data['question'] as String),
              const SizedBox(height: 20,),
              Text(data['user_answer'] as String),
              const SizedBox(height: 20,),
              Text(data['correct_answer'] as String),
              const SizedBox(height: 20,),
            ],)
          ],
        );
      }).toList(), //as .map returns an iterable and not List
    );
  }
}