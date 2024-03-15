/// email : "johndoe@mail.com"
/// password : "12345678"
/// role : "farmer"
/// device_token : "0imfnc8mVLWwsAawjYr4Rx-Af50DDqtlx"
/// type : "email/facebook/google/apple"
/// social_id : "0imfnc8mVLWwsAawjYr4Rx-Af50DDqtlx"

class LoginModel {
  LoginModel({
      String? email, 
      String? password, 
      String? role, 
      String? deviceToken, 
      String? type, 
      String? socialId,}){
    _email = email;
    _password = password;
    _role = role;
    _deviceToken = deviceToken;
    _type = type;
    _socialId = socialId;
}

  LoginModel.fromJson(dynamic json) {
    _email = json['email'];
    _password = json['password'];
    _role = json['role'];
    _deviceToken = json['device_token'];
    _type = json['type'];
    _socialId = json['social_id'];
  }
  String? _email;
  String? _password;
  String? _role;
  String? _deviceToken;
  String? _type;
  String? _socialId;
LoginModel copyWith({  String? email,
  String? password,
  String? role,
  String? deviceToken,
  String? type,
  String? socialId,
}) => LoginModel(  email: email ?? _email,
  password: password ?? _password,
  role: role ?? _role,
  deviceToken: deviceToken ?? _deviceToken,
  type: type ?? _type,
  socialId: socialId ?? _socialId,
);
  String? get email => _email;
  String? get password => _password;
  String? get role => _role;
  String? get deviceToken => _deviceToken;
  String? get type => _type;
  String? get socialId => _socialId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['email'] = _email;
    map['password'] = _password;
    map['role'] = _role;
    map['device_token'] = _deviceToken;
    map['type'] = _type;
    map['social_id'] = _socialId;
    return map;
  }

}