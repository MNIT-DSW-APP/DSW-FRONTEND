class QuestionAndAnswer{

  bool isExpanded;    //Is Question clicked -> Show Answer
  final String question;
  final String answer;

  QuestionAndAnswer({this.isExpanded = false, required this.question, required this.answer});
}


final List<QuestionAndAnswer> qnaList = [
  QuestionAndAnswer(question: "The actor John Gielgud believed that of all Shakespeare's characters Hamlet is probably the one most like Shakespeare himself–since, of all Shakespeare's characters, only Hamlet can be imagined to have written all the Shakespearean plays. How good an understanding of Hamlet's character does Gielgud's belief reflect?", answer: "Discuss the belief that great literature of the twentieth century lacks protagonists who qualify as heroes. (Among the works you discuss, include at least two by the following authors: Anton Chekhov, Virginia Woolf, Ernest Hemingway, F. Scott Fitzgerald, James Joyce, Gabriel Garcia Marquez, Amy Tan, Chinua Achebe.)"),
  QuestionAndAnswer(question: "header 2", answer: "body 2"),
  QuestionAndAnswer(question: "header 3", answer: "body 3"),
  QuestionAndAnswer(question: "header 4", answer: "body 4"),
  QuestionAndAnswer(question: "header 5", answer: "body 5"),
  QuestionAndAnswer(question: "header 6", answer: "body 6"),
  QuestionAndAnswer(question: "header 7", answer: "body 7"),
  QuestionAndAnswer(question: "header 8", answer: "body 8"),
  QuestionAndAnswer(question: "header 9", answer: "body 9"),
  QuestionAndAnswer(question: "header 10", answer: "body 10"),
  QuestionAndAnswer(question: "header 11", answer: "body 11"),
  QuestionAndAnswer(question: "header 12", answer: "body 12")

];