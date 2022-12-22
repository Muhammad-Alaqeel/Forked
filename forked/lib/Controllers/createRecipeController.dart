import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/TextFieldCom.dart';
import '../Constants/styles.dart';

class createRecipeController extends GetxController{

  List<TextEditingController> ingredientsTextEdittingControler=[TextEditingController()];
  late List<Widget> ingredientsTextFielsAndX;


@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
   ingredientsTextFielsAndX=[Padding(
     padding: const EdgeInsets.only(top: 10, bottom: 10),
     child: TextFieldCom(borderColor: lightGreen, IconImage: "images/add.png", Controller: ingredientsTextEdittingControler[0],),
   )];

  }

addIngredient(){


ingredientsTextEdittingControler.add(TextEditingController());
ingredientsTextFielsAndX.add(Padding(
     padding: const EdgeInsets.only(top: 10, bottom: 10),
  child:   TextFieldCom(borderColor: lightGreen, IconImage: "images/add.png", Controller: ingredientsTextEdittingControler.last,),
));

update();
}
}