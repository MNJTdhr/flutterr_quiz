import 'package:flutter/material.dart';
import 'data/questions_data.dart';
import 'answer_button.dart';

class QuestionScreen extends StatelessWidget {
  QuestionScreen({super.key});

  final currentQuestion = questions[0];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                currentQuestion.questions,
                style: const TextStyle(color: Colors.white, fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
            ...currentQuestion.answers.map(
              (answerItemsFromQuestionData) {
                return AnswerButton(
                  incomingText: answerItemsFromQuestionData,
                  onTap: () {},
                );
                //dynamic! Replaced all other answer buttons
              },
            ),
          ],
        ),
      ),
    );
  }
}
