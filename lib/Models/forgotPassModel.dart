/// mobile : "+1984512598"

class ForgotPassModel {
  ForgotPassModel({
      String? mobile,}){
    _mobile = mobile;
}

  ForgotPassModel.fromJson(dynamic json) {
    _mobile = json['mobile'];
  }
  String? _mobile;
ForgotPassModel copyWith({  String? mobile,
}) => ForgotPassModel(  mobile: mobile ?? _mobile,
);
  String? get mobile => _mobile;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mobile'] = _mobile;
    return map;
  }

}