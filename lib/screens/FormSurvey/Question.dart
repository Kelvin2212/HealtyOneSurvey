class UserQuestion {
  UserQuestion({
    required this.status,
    required this.data,
  });

  String status;
  List<Question> data;

  factory UserQuestion.fromJson(Map<String, dynamic> json) => UserQuestion(
        status: json["status"],
        data:
            List<Question>.from(json["data"].map((x) => Question.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Question {
  Question({
    required this.id,
    required this.question,
    required this.type,
  });

  int id;
  String question;
  int type;

  factory Question.fromJson(Map<String, dynamic> json) => Question(
        id: json["id"],
        question: json["question"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "question": question,
        "type": type.toString(),
      };
}
