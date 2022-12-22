import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Components/addField.dart';

class createRecipeController extends GetxController {
  List ingredientsTextEdittingControler = [TextEditingController()];
  late List<Widget> ingredientsTextFielsAndX;

  List stepsTextEdittingControler = [TextEditingController()];
    List<String> stepImage = [];

  late List<Widget> stepTextField;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    ingredientsTextFielsAndX = [
      Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: addFeild(
          textController: ingredientsTextEdittingControler[0],
          deletingFunction: () {
            ingredientsTextFielsAndX.replaceRange(0, 1, [SizedBox()]);

            ingredientsTextEdittingControler.replaceRange(0, 1, [null]);
          },
        ),

        //  child: TextFieldCom(borderColor: lightGreen, IconImage: "images/add.png", Controller: ingredientsTextEdittingControler[0],),
      )
    ];

    stepTextField = [
      Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: addFeild(
          imageFunction: () {
          stepImage.add("value");
          },
          textController: stepsTextEdittingControler[0],
          deletingFunction: () {
            stepTextField.replaceRange(0, 1, [SizedBox()]);

            stepsTextEdittingControler.replaceRange(0, 1, [null]);
          },
        ),

        //  child: TextFieldCom(borderColor: lightGreen, IconImage: "images/add.png", Controller: ingredientsTextEdittingControler[0],),
      )
    ];

    update();
  }

  addIngredient() {
    var texFXIndex = ingredientsTextEdittingControler.length;
    var textCont = ingredientsTextEdittingControler.length;
    ingredientsTextEdittingControler.add(TextEditingController());

    ingredientsTextFielsAndX.add(Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: addFeild(
        textController: ingredientsTextEdittingControler[
            ingredientsTextEdittingControler.length - 1],
        deletingFunction: () {
          ingredientsTextEdittingControler
              .replaceRange(textCont - 1, textCont, [null]);

          ingredientsTextFielsAndX
              .replaceRange(texFXIndex, texFXIndex + 1, [SizedBox()]);
          update();
        },
      ),

      //  child: TextFieldCom(borderColor: lightGreen, IconImage: "images/add.png", Controller: ingredientsTextEdittingControler[0],),
    ));

    update();
  }

  addStep() {
    var texFXIndex = stepsTextEdittingControler.length;
    var textCont = stepsTextEdittingControler.length;
    stepsTextEdittingControler.add(TextEditingController());

    stepTextField.add(Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: addFeild(
        imageFunction: () {
              stepImage.add("value");
        },
        textController:
            stepsTextEdittingControler[stepsTextEdittingControler.length - 1],
        deletingFunction: () {
          stepsTextEdittingControler
              .replaceRange(textCont - 1, textCont, [null]);

          stepTextField.replaceRange(texFXIndex, texFXIndex + 1, [SizedBox()]);
          update();
        },
      ),

      //  child: TextFieldCom(borderColor: lightGreen, IconImage: "images/add.png", Controller: ingredientsTextEdittingControler[0],),
    ));

    update();

for (var element in stepsTextEdittingControler) {
  
  if(element.runtimeType==TextEditingController){
    print("object");
    TextEditingController b=element as TextEditingController;
  print(b.text);
  
  }
}
  }
}
