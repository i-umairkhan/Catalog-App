import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catlog/pages/catalog.dart';
import 'package:flutter_catlog/utils/drawer.dart';
import 'package:flutter_catlog/utils/item_widget.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJSON = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJSON);
    var productDara = decodedData["products"];
  }

  @override
  final dummyList = List.generate(7, (index) => CatalogModel.items[0]);
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        title: const Text("Catlog App"),
      ),
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemWidget(
            item: dummyList[index],
          );
        },
      ),
      drawer: const MyDrwer(),
    );
  }
}
