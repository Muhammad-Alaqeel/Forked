import 'package:flutter/material.dart';
import 'package:forked/Components/Camera.dart';
import 'package:forked/Components/userDisplay.dart';
class testing extends StatefulWidget {
   testing({super.key});

  @override
  State<testing> createState() => _testingState();
}

class _testingState extends State<testing> {
TextEditingController con=TextEditingController();

List<Widget> listWidget=[];
List<TextEditingController> lis=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(


        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Column(
           children: listWidget,
         ),

          ElevatedButton(onPressed: (){
           lis.add(TextEditingController());
            listWidget.add( TextField(
            controller:lis.last ,

          ));
          setState(() {
            
          });
          }, child: Text("data")),

          

        ],
      ),
    );
  }
}