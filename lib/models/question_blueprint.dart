//question blueprint

class QuestionBlueprint {
  const QuestionBlueprint(this.questions, this.answers);

  final String questions;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
