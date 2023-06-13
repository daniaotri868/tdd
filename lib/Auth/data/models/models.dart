class Result {
  String? activationCode;
  Result({this.activationCode});
  Result.fromJson(Map<String, dynamic> json) {
    activationCode = json['activationCode'];
  }
}

//http://52.91.25.191:85/api/Account/LogIn?dialCode=%2B963&phoneNumber=912345678