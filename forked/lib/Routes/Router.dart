


import 'package:forked/Views/Home.dart';
import 'package:get/get.dart';
import 'package:forked/Views/RegistrationNav.dart';

List<GetPage<dynamic>>? appRoutes=[
  GetPage(name: NamedRoute.StratingPage, page: ()=>start(),
  // binding: startPageBinding(),
  
  ),
    GetPage(name: NamedRoute.HomePage, page: ()=>Home(),
  // binding: startPageBinding(),
  
  )
];

class NamedRoute{
  static String StratingPage="/start";
  static String HomePage="/home";

}