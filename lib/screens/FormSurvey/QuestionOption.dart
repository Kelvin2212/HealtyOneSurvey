class UserOption {
  UserOption({
    required this.status,
    required this.data,
  });

  String status;
  List<QuestionOption> data;

  factory UserOption.fromJson(Map<String, dynamic> json) => UserOption(
        status: json["status"],
        data: List<QuestionOption>.from(
            json["data"].map((x) => QuestionOption.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class QuestionOption {
  QuestionOption({
    required this.id,
    required this.questionId,
    required this.option,
  });

  int id;
  int questionId;
  String option;

  factory QuestionOption.fromJson(Map<String, dynamic> json) => QuestionOption(
        id: json["id"],
        questionId: json["question_id"],
        option: json["option"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "question_id": questionId,
        "option": option,
      };
}
