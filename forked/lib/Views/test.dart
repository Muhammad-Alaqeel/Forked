import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:forked/Components/picker.dart';

import '../Components/Recipeinfo.dart';

class test extends StatelessWidget {
  const test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          picker(first: "Ingredients", second: "Preperation", third: "Chef innovation", pickerIndex: 2),
        ],
      )
    );
  }
}