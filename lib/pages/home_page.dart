import 'package:flutter/material.dart';
import 'package:flutter_catlog/pages/catalog.dart';
import 'package:flutter_catlog/utils/drawer.dart';
import 'package:flutter_catlog/utils/item_widget.dart';
// import 'package:flutter_catlog/models/catalog.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: const Text("Catlog App"),
      ),
      body: ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemWidget(
            item: CatalogModel.items[index],
          );
        },
      ),
      drawer: const MyDrwer(),
    );
  }
}
