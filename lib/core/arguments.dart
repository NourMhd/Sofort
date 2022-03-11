import 'package:equatable/equatable.dart';
import 'package:sofort/modeles_api/model_api_contact/model_contact.dart';
import 'package:sofort/modeles_api/model_api_info/model_info.dart';


class CompanyInfoParams extends Equatable {
  final ModelCompanyInfo modelCampanyInfo;
  final Modelcompany modelcompany;

  CompanyInfoParams(
      {required this.modelCampanyInfo, required this.modelcompany});

  @override
  
  List<Object?> get props => [modelCampanyInfo,modelcompany];
      
}
