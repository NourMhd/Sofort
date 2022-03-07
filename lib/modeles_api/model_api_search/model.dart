class ListCompanies {
  List<Companies>? companies;

  ListCompanies({this.companies});

  ListCompanies.fromJson(Map<String, dynamic> json) {
    if (json['companies'] != null) {
      companies = <Companies>[];
      json['companies'].forEach((v) {
        companies!.add(new Companies.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.companies != null) {
      data['companies'] = this.companies!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Companies {
  String? companyName;
  String? registerNumber;
  String? companyNumber;
  String? status;

  Companies(
      {this.companyName, this.registerNumber, this.companyNumber, this.status});

  Companies.fromJson(Map<String, dynamic> json) {
    companyName = json['company_name'];
    registerNumber = json['register_number'];
    companyNumber = json['company_number'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['company_name'] = this.companyName;
    data['register_number'] = this.registerNumber;
    data['company_number'] = this.companyNumber;
    data['status'] = this.status;
    return data;
  }
}