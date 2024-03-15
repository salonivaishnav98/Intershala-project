/// full_name : "john doe"
/// email : "johndoe@mail.com"
/// phone : "+19876543210"
/// password : "12345678"
/// role : "farmer"
/// business_name : "Dairy Farm"
/// informal_name : "London Dairy"
/// address : "3663 Marshville Road"
/// city : "Poughkeepsie"
/// state : "New York"
/// zip_code : 12601
/// registration_proof : "my_proof.pdf"
/// business_hours : {"mon":["8:00am - 10:00am","10:00am - 1:00pm"],"tue":["8:00am - 10:00am","10:00am - 1:00pm"],"wed":["8:00am - 10:00am","10:00am - 1:00pm","1:00pm - 4:00pm"],"thu":["8:00am - 10:00am","10:00am - 1:00pm","1:00pm - 4:00pm"],"fri":["8:00am - 10:00am","10:00am - 1:00pm"],"sat":["8:00am - 10:00am","10:00am - 1:00pm"],"sun":["8:00am -10:00am"]}
/// device_token : "0imfnc8mVLWwsAawjYr4Rx-Af50DDqtlx"
/// type : "email/facebook/google/apple"
/// social_id : "0imfnc8mVLWwsAawjYr4Rx-Af50DDqtlx"
library;

class RegisterModel {
  RegisterModel({
      String? fullName, 
      String? email, 
      String? phone, 
      String? password, 
      String? role, 
      String? businessName, 
      String? informalName, 
      String? address, 
      String? city, 
      String? state, 
      num? zipCode, 
      String? registrationProof, 
      BusinessHours? businessHours, 
      String? deviceToken, 
      String? type, 
      String? socialId,}){
    _fullName = fullName;
    _email = email;
    _phone = phone;
    _password = password;
    _role = role;
    _businessName = businessName;
    _informalName = informalName;
    _address = address;
    _city = city;
    _state = state;
    _zipCode = zipCode;
    _registrationProof = registrationProof;
    _businessHours = businessHours;
    _deviceToken = deviceToken;
    _type = type;
    _socialId = socialId;
}

  RegisterModel.fromJson(dynamic json) {
    _fullName = json['full_name'];
    _email = json['email'];
    _phone = json['phone'];
    _password = json['password'];
    _role = json['role'];
    _businessName = json['business_name'];
    _informalName = json['informal_name'];
    _address = json['address'];
    _city = json['city'];
    _state = json['state'];
    _zipCode = json['zip_code'];
    _registrationProof = json['registration_proof'];
    _businessHours = json['business_hours'] != null ? BusinessHours.fromJson(json['business_hours']) : null;
    _deviceToken = json['device_token'];
    _type = json['type'];
    _socialId = json['social_id'];
  }
  String? _fullName;
  String? _email;
  String? _phone;
  String? _password;
  String? _role;
  String? _businessName;
  String? _informalName;
  String? _address;
  String? _city;
  String? _state;
  num? _zipCode;
  String? _registrationProof;
  BusinessHours? _businessHours;
  String? _deviceToken;
  String? _type;
  String? _socialId;
RegisterModel copyWith({  String? fullName,
  String? email,
  String? phone,
  String? password,
  String? role,
  String? businessName,
  String? informalName,
  String? address,
  String? city,
  String? state,
  num? zipCode,
  String? registrationProof,
  BusinessHours? businessHours,
  String? deviceToken,
  String? type,
  String? socialId,
}) => RegisterModel(  fullName: fullName ?? _fullName,
  email: email ?? _email,
  phone: phone ?? _phone,
  password: password ?? _password,
  role: role ?? _role,
  businessName: businessName ?? _businessName,
  informalName: informalName ?? _informalName,
  address: address ?? _address,
  city: city ?? _city,
  state: state ?? _state,
  zipCode: zipCode ?? _zipCode,
  registrationProof: registrationProof ?? _registrationProof,
  businessHours: businessHours ?? _businessHours,
  deviceToken: deviceToken ?? _deviceToken,
  type: type ?? _type,
  socialId: socialId ?? _socialId,
);
  String? get fullName => _fullName;
  String? get email => _email;
  String? get phone => _phone;
  String? get password => _password;
  String? get role => _role;
  String? get businessName => _businessName;
  String? get informalName => _informalName;
  String? get address => _address;
  String? get city => _city;
  String? get state => _state;
  num? get zipCode => _zipCode;
  String? get registrationProof => _registrationProof;
  BusinessHours? get businessHours => _businessHours;
  String? get deviceToken => _deviceToken;
  String? get type => _type;
  String? get socialId => _socialId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['full_name'] = _fullName;
    map['email'] = _email;
    map['phone'] = _phone;
    map['password'] = _password;
    map['role'] = _role;
    map['business_name'] = _businessName;
    map['informal_name'] = _informalName;
    map['address'] = _address;
    map['city'] = _city;
    map['state'] = _state;
    map['zip_code'] = _zipCode;
    map['registration_proof'] = _registrationProof;
    if (_businessHours != null) {
      map['business_hours'] = _businessHours?.toJson();
    }
    map['device_token'] = _deviceToken;
    map['type'] = _type;
    map['social_id'] = _socialId;
    return map;
  }

}

/// mon : ["8:00am - 10:00am","10:00am - 1:00pm"]
/// tue : ["8:00am - 10:00am","10:00am - 1:00pm"]
/// wed : ["8:00am - 10:00am","10:00am - 1:00pm","1:00pm - 4:00pm"]
/// thu : ["8:00am - 10:00am","10:00am - 1:00pm","1:00pm - 4:00pm"]
/// fri : ["8:00am - 10:00am","10:00am - 1:00pm"]
/// sat : ["8:00am - 10:00am","10:00am - 1:00pm"]
/// sun : ["8:00am -10:00am"]

class BusinessHours {
  BusinessHours({
      List<String>? mon, 
      List<String>? tue, 
      List<String>? wed, 
      List<String>? thu, 
      List<String>? fri, 
      List<String>? sat, 
      List<String>? sun,}){
    _mon = mon;
    _tue = tue;
    _wed = wed;
    _thu = thu;
    _fri = fri;
    _sat = sat;
    _sun = sun;
}

  BusinessHours.fromJson(dynamic json) {
    _mon = json['mon'] != null ? json['mon'].cast<String>() : [];
    _tue = json['tue'] != null ? json['tue'].cast<String>() : [];
    _wed = json['wed'] != null ? json['wed'].cast<String>() : [];
    _thu = json['thu'] != null ? json['thu'].cast<String>() : [];
    _fri = json['fri'] != null ? json['fri'].cast<String>() : [];
    _sat = json['sat'] != null ? json['sat'].cast<String>() : [];
    _sun = json['sun'] != null ? json['sun'].cast<String>() : [];
  }
  List<String>? _mon;
  List<String>? _tue;
  List<String>? _wed;
  List<String>? _thu;
  List<String>? _fri;
  List<String>? _sat;
  List<String>? _sun;
BusinessHours copyWith({  List<String>? mon,
  List<String>? tue,
  List<String>? wed,
  List<String>? thu,
  List<String>? fri,
  List<String>? sat,
  List<String>? sun,
}) => BusinessHours(  mon: mon ?? _mon,
  tue: tue ?? _tue,
  wed: wed ?? _wed,
  thu: thu ?? _thu,
  fri: fri ?? _fri,
  sat: sat ?? _sat,
  sun: sun ?? _sun,
);
  List<String>? get mon => _mon;
  List<String>? get tue => _tue;
  List<String>? get wed => _wed;
  List<String>? get thu => _thu;
  List<String>? get fri => _fri;
  List<String>? get sat => _sat;
  List<String>? get sun => _sun;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mon'] = _mon;
    map['tue'] = _tue;
    map['wed'] = _wed;
    map['thu'] = _thu;
    map['fri'] = _fri;
    map['sat'] = _sat;
    map['sun'] = _sun;
    return map;
  }

}