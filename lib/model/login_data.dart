class LoginData{
  late String token;
  late int expiresIn;

  LoginData.fromJson(Map<String, dynamic> json){
    token = json["token"];
    expiresIn = json["expiresIn"];
  }
}