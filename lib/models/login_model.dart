class LoginBody {
  String username;
  String password;
  String ip;
  String userAgent;
  String csrf;

  LoginBody({
    required this.username,
    required this.password,
    required this.ip,
    required this.userAgent,
    required this.csrf,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['username'] = username;
    data['password'] = password;
    data['ip'] = ip;
    data['user_agent'] = userAgent;
    data['csrf'] = csrf;
    return data;
  }

  factory LoginBody.fromJson(Map<String, dynamic> json) {
    return LoginBody(
      username: json['username'] ?? "",
      password: json['password'] ?? "",
      ip: json['ip'] ?? "",
      userAgent: json['user_agent'] ?? "",
      csrf: json['csrf'] ?? "",
    );
  }
}
