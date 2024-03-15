/// token : "895642"
/// password : "examplepassword"
/// cpassword : "examplepassword"

class ResetPassModel {
  ResetPassModel({
      String? token, 
      String? password, 
      String? cpassword,}){
    _token = token;
    _password = password;
    _cpassword = cpassword;
}

  ResetPassModel.fromJson(dynamic json) {
    _token = json['token'];
    _password = json['password'];
    _cpassword = json['cpassword'];
  }
  String? _token;
  String? _password;
  String? _cpassword;
ResetPassModel copyWith({  String? token,
  String? password,
  String? cpassword,
}) => ResetPassModel(  token: token ?? _token,
  password: password ?? _password,
  cpassword: cpassword ?? _cpassword,
);
  String? get token => _token;
  String? get password => _password;
  String? get cpassword => _cpassword;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = _token;
    map['password'] = _password;
    map['cpassword'] = _cpassword;
    return map;
  }

}