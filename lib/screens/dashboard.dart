import 'package:flutter/material.dart';

import '../componant/button_component.dart';
import '../componant/text_filed_componant.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});



  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}



class _DashboardScreenState extends State<DashboardScreen> {
  final TextEditingController textController = TextEditingController();
  final TextEditingController editTextController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState


    super.initState();
  }
  @override
  Widget build(BuildContext context) {



    return Scaffold(
        appBar: AppBar(title: Text('Dashboard')),
        body: Column(children: [
          ButtonComponent(
            text: 'Button 1',
            onPressed: () {
              // Add your button 1 action here
              print('${textController.text}');
            },
          ),
          SizedBox(height:20),
          InputFieldComponent(
            labelText: 'Enter value..',
            controller: textController,
          ),
          Row(
            children: [
              Text(editTextController.text ,style: TextStyle(fontSize: 20)),
              ButtonComponent(
                text: 'edit',
                onPressed: () {

                },
              ),
            ],
          )


        ],));
  }
}
