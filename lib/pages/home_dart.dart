import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/widgets/item_widget.dart';
import '../models/catalog.dart';
import '../widgets/drawer.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

   @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    // check scanffold - https://www.fluttercampus.com/tutorial/9/flutter-scaffold/
    // final dummyList = List.generate(15, (index) => CatalogModel.items[0]);
    
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
        child: (CatalogModel.items != null && CatalogModel.items!.isNotEmpty)
            ? ListView.builder(
                itemCount: CatalogModel.items?.length,
                itemBuilder: (context, index) => ItemWidget(
                  item: CatalogModel.items![index],
                ),
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
