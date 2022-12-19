


import 'package:get/get.dart';
import 'package:forked/Views/RegistrationNav.dart';

List<GetPage<dynamic>>? appRoutes=[
  GetPage(name: NamedRoute.StratingPage, page: ()=>start(),
  // binding: startPageBinding(),
  
  )
];

class NamedRoute{
  static String StratingPage="/start";
}