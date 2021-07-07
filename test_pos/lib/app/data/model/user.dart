class UserModel {
  String? userName;
  String? password;

  UserModel({this.userName, this.password});

  UserModel.fromJson(Map<String, dynamic> json) {
    this.userName = json['userName'];
    this.password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userName'] = this.userName;
    data['password'] = this.password;
    return data;
  }
}
