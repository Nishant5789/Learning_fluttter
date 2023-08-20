import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/item_widget.dart';
import '../models/catalog.dart';
import '../widgets/drawer.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {

    // check scanffold - https://www.fluttercampus.com/tutorial/9/flutter-scaffold/
    final dummyList = List.generate(15, (index) => CatalogModel.items[0]);
    
    return Scaffold(
      appBar: AppBar( 
        title: Text("Catalog App"),
      ),
      // body:  Center(
      //   child: Container(
      //     child: Text("Welcome to 31 day flutter"),
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              // item: CatalogModel.items[index],
              item: dummyList[index],
            );
          },
        ),
      ),

      drawer: MyDrawer(),
    );
  }
}
