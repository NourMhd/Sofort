import 'dart:html';

import 'package:flutter/material.dart';
import 'package:sofort/modeles_api/model_api_info/model_info.dart';
import 'package:sofort/ui/home_page.dart';
import 'package:sofort/ui/menu/creation_account.dart';
import 'package:sofort/ui/menu/login.dart';
import 'package:sofort/ui/menu/my_profile.dart';
import 'package:sofort/ui/mylist/company_info.dart';
import 'package:sofort/ui/mylist/myListWidgets/documents.dart';
import 'package:sofort/ui/mylist/myList_Page.dart';
import 'package:sofort/ui/search/search_page.dart';

const String homePage = 'homepage';
const String myListPage = 'myListPage';
const String searchpage = 'searchpage';
const String myProfile = 'myProfile';
const String login = 'login';
const String creationAccount = 'creationAccount';
const String companyInfo = 'companyInfo';

Route<dynamic> controller(RouteSettings settings) {
  final arguments = settings.arguments ;
  switch (settings.name) {
    case homePage:
      return MaterialPageRoute(builder: (context) => const HomePage());
    case myListPage:
      return MaterialPageRoute(builder: (context) => const MyListPage());
    case searchpage:
      return MaterialPageRoute(builder: (context) => const Searchpage());
      case myProfile:
      return MaterialPageRoute(builder: (context) => const MyProfile());
      case login:
      return MaterialPageRoute(builder: (context) => const Login());
       case creationAccount:
      return MaterialPageRoute(builder: (context) => const CreationAccount());
      case companyInfo:
     return MaterialPageRoute(builder: (context) =>   CompanyInfo(company:arguments as ModelCompanyInfo ));
     case documents:
      return MaterialPageRoute(builder: (context) => const Documents());
     
     





    default:
      throw ('this route name does not exist');
  }
}
