class ModelCompanyInfo {
  Company? company;

  ModelCompanyInfo({this.company});

  ModelCompanyInfo.fromJson(Map<String, dynamic> json) {
    company =
        json['company'] != null ? new Company.fromJson(json['company']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.company != null) {
      data['company'] = this.company!.toJson();
    }
    return data;
  }
}

class Company {
  String? companyNumber;
  String? companyName;
  String? registerNumber;
  String? status;
  String? objective;
  String? registerType;
  String? registeredAddress;
  String? capital;
  List<Notices>? notices;
  Documents? documents;
  List<Officers>? officers;

  Company(
      {this.companyNumber,
      this.companyName,
      this.registerNumber,
      this.status,
      this.objective,
      this.registerType,
      this.registeredAddress,
      this.capital,
      this.notices,
      this.documents,
      this.officers});

  Company.fromJson(Map<String, dynamic> json) {
    companyNumber = json['company_number'];
    companyName = json['company_name'];
    registerNumber = json['register_number'];
    status = json['status'];
    objective = json['objective'];
    registerType = json['register_type'];
    registeredAddress = json['registered_address'];
    capital = json['capital'];
    if (json['notices'] != null) {
      notices = <Notices>[];
      json['notices'].forEach((v) {
        notices!.add(new Notices.fromJson(v));
      });
    }
    documents = json['documents'] != null
        ? new Documents.fromJson(json['documents'])
        : null;
    if (json['officers'] != null) {
      officers = <Officers>[];
      json['officers'].forEach((v) {
        officers!.add(new Officers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['company_number'] = this.companyNumber;
    data['company_name'] = this.companyName;
    data['register_number'] = this.registerNumber;
    data['status'] = this.status;
    data['objective'] = this.objective;
    data['register_type'] = this.registerType;
    data['registered_address'] = this.registeredAddress;
    data['capital'] = this.capital;
    if (this.notices != null) {
      data['notices'] = this.notices!.map((v) => v.toJson()).toList();
    }
    if (this.documents != null) {
      data['documents'] = this.documents!.toJson();
    }
    if (this.officers != null) {
      data['officers'] = this.officers!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Notices {
  String? id;
  String? noticeText;
  String? publicationDate;

  Notices({this.id, this.noticeText, this.publicationDate});

  Notices.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    noticeText = json['notice_text'];
    publicationDate = json['publication_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['notice_text'] = this.noticeText;
    data['publication_date'] = this.publicationDate;
    return data;
  }
}

class Documents {
  AD? aD;
  AD? cD;
  AD? sI;
  List<DK>? dK;
  List<Bilans>? bilans;

  Documents({this.aD, this.cD, this.sI, this.dK, this.bilans});

  Documents.fromJson(Map<String, dynamic> json) {
    aD = json['AD'] != null ? new AD.fromJson(json['AD']) : null;
    cD = json['CD'] != null ? new AD.fromJson(json['CD']) : null;
    sI = json['SI'] != null ? new AD.fromJson(json['SI']) : null;
    if (json['DK'] != null) {
      dK = <DK>[];
      json['DK'].forEach((v) {
        dK!.add(new DK.fromJson(v));
      });
    }
    if (json['Bilans'] != null) {
      bilans = <Bilans>[];
      json['Bilans'].forEach((v) {
        bilans!.add(new Bilans.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.aD != null) {
      data['AD'] = this.aD!.toJson();
    }
    if (this.cD != null) {
      data['CD'] = this.cD!.toJson();
    }
    if (this.sI != null) {
      data['SI'] = this.sI!.toJson();
    }
    if (this.dK != null) {
      data['DK'] = this.dK!.map((v) => v.toJson()).toList();
    }
    if (this.bilans != null) {
      data['Bilans'] = this.bilans!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Bilans {
  String? title;
  String? idDocument;

  Bilans({this.title, this.idDocument});

  Bilans.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    idDocument = json['id_document'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['id_document'] = this.idDocument;
    return data;
  }
}

class AD {
  String? idDocument;

  AD({this.idDocument});

  AD.fromJson(Map<String, dynamic> json) {
    idDocument = json['id_document'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_document'] = this.idDocument;
    return data;
  }
}

class DK {
  String? title;
  String? idDocument;

  DK({this.title, this.idDocument});

  DK.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    idDocument = json['id_document'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['id_document'] = this.idDocument;
    return data;
  }
}

class Officers {
  String? name;
  String? lastname;
  String? firstname;
  String? position;
  String? city;
  String? birthDay;
  String? startDate;

  Officers(
      {this.name,
      this.lastname,
      this.firstname,
      this.position,
      this.city,
      this.birthDay,
      this.startDate});

  Officers.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    lastname = json['lastname'];
    firstname = json['firstname'];
    position = json['position'];
    city = json['city'];
    birthDay = json['birth_day'];
    startDate = json['start_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['lastname'] = this.lastname;
    data['firstname'] = this.firstname;
    data['position'] = this.position;
    data['city'] = this.city;
    data['birth_day'] = this.birthDay;
    data['start_date'] = this.startDate;
    return data;
  }
}