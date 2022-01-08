import 'package:flutter/material.dart';
import 'package:flutter_catlog/utils/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catlog App"),
      ),
      body: const Center(
        child: Text('Welcome to 30 days of flutter'),
      ),
      drawer: const MyDrwer(),
    );
  }
}
