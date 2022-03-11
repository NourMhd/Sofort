class Modelcompany {
  String? phoneNumber;
  String? email;
  String? website;
  String? mobileNumber;

  Modelcompany({required this.phoneNumber,required this.email,required this.website,required this.mobileNumber});

  Modelcompany.fromJson(Map<String, dynamic> json) {
    phoneNumber = json['phone_number'];
    email = json['email'];
    website = json['website'];
    mobileNumber = json['mobile_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['phone_number'] = this.phoneNumber;
    data['email'] = this.email;
    data['website'] = this.website;
    data['mobile_number'] = this.mobileNumber;
    return data;
  }
}