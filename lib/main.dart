import 'package:flutter/material.dart';
import 'package:grid_task/model/grid_model.dart';

import 'model/screens/textform_screen.dart';

main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatelessWidget {
  final List<GridModel> gridModelList = [
    GridModel(
        name: "Pedro",
        age: 15,
        email: "ruasp05@gmail.com",
        image: "assets/AccC.jpg"),
    GridModel(
        name: "Sakuramoto",
        age: 25,
        email: "Sakuramoto@gmail.com",
        image: "assets/desenhoCartoon.jpeg"),
    GridModel(
        name: "Camargo",
        age: 5,
        email: "Camargo@gmail.com",
        image: "assets/bolaFogo.jpeg"),
    GridModel(
        name: "Ruas",
        age: 35,
        email: "Ruas@gmail.com",
        image: "assets/angel.jpeg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid Task"),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 9 / 12,
        ),
        itemCount: gridModelList.length,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return TextFormScreen(gridModel: gridModelList[index],); 
                },),);
              },
              child: Container(
                alignment: Alignment.center,
                color: Colors.red,
                child: Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: Image.asset(
                        gridModelList[index].image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          gridModelList[index].name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

// GridView Count
//  GridView.count(
//         padding: EdgeInsets.all(10),
//         crossAxisCount: 2,
//         mainAxisSpacing: 10,
//         crossAxisSpacing: 10,
//         childAspectRatio: 9 / 12,
//         children: [
//           // 1-1
//           Container(
//             color: Colors.blue,
//           ),
//           // 1-2
//           Container(
//             color: Colors.black,
//           ),
//           // 2-1
//           Container(
//             color: Colors.black,
//           ),
//           // 2-2
//           Container(
//             color: Colors.blue,
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 // Image
//                 AspectRatio(
//                   aspectRatio: 1,
//                   child: Placeholder(
//                     color: Colors.red,
//                   ),
//                 ),

//                 SizedBox(
//                   height: 15,
//                 ),

//                 Text("Name of the person", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
//               ],
//             ),
//           ),
//         ],
//       ),
