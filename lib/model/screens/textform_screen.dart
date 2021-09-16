import 'package:flutter/material.dart';

import 'package:grid_task/model/grid_model.dart';

class TextFormScreen extends StatelessWidget {
  final GridModel gridModel;

  TextFormScreen({
    this.gridModel,
  }) {
    nameController.text = gridModel.name;
    ageController.text = gridModel.age.toString();
    emailController.text = gridModel.email;
  }

  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          height: 300,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
                          BoxShadow(color: Colors.black54, spreadRadius: 2, blurRadius: 8),
                        ],
          ),
          child: ListView(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(gridModel.image),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(color: Colors.black54, spreadRadius: 2, blurRadius: 8),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                        child: Text(
                      "Hello World",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )),
                  ],
                ),
              ),
              TextFormField(
                controller: nameController,
              ),
              TextFormField(
                controller: ageController,
              ),
              TextFormField(
                controller: emailController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
