
class UserModel {
  String id;
  String name;
  String email;
  String mobile;
  String referee;
  String referral_code;
  int status;
  String token;
  int otpverificationstatus;
  int emailverificationstatus;


  UserModel({
  required this.name,
  required this.id,
  required this.email,
  required this.status,
  required this.token,
  required this.emailverificationstatus,
  required this.mobile,
  required this.otpverificationstatus,
  required this.referee,
  required this.referral_code,
  });

  UserModel copyWith({
    String? id,
    String? name,
    String ?email,
    String? mobile,
    String ?referee,
    String? referral_code,
    int? status,
    String? token,
    int ?otpverificationstatus,
    int? emailverificationstatus,
  }) {
    return UserModel(
      name: name ?? this.name,
     id: id??this.id,
      status: status??this.status,
      email: email??this.email,
      emailverificationstatus: emailverificationstatus??this.emailverificationstatus,
      mobile: mobile??this.mobile,
      otpverificationstatus: otpverificationstatus??this.otpverificationstatus,
      referee: referee??this.referee,
      referral_code: referral_code??this.referral_code,
      token: token??this.token,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'id':id,
      'mobile':mobile,
      'referee':referee,
      'referral_code':referral_code,
      'status':status,
      'token':token,
      'otpverificationstatus':otpverificationstatus,
      'emailverificationstatus':emailverificationstatus

    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] ?? "",
     token: map['token']??'',
       referral_code: map['referral_code']??'',
      referee: map['referee']??'',
      otpverificationstatus: map['otpverificationstatus']??0,
      mobile: map['mobile']??'',
      emailverificationstatus: map['emailverificationstatus']??0,
      email: map['email']??'',
      status: map['status']??0,
      id: map['id']??''
    );
  }
}
