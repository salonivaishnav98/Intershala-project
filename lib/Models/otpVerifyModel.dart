/// otp : "895642"

class OtpVerifyModel {
  OtpVerifyModel({
      String? otp,}){
    _otp = otp;
}

  OtpVerifyModel.fromJson(dynamic json) {
    _otp = json['otp'];
  }
  String? _otp;
OtpVerifyModel copyWith({  String? otp,
}) => OtpVerifyModel(  otp: otp ?? _otp,
);
  String? get otp => _otp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['otp'] = _otp;
    return map;
  }

}