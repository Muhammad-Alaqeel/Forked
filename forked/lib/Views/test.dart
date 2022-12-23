import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Components/Recipeinfo.dart';

class test extends StatelessWidget {
  const test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      SizedBox(
        height: 100,width: 200,
      child: RecipeInfo(cal: "200",serving: "5",time: "50",))
      
      ),
    );
  }
}