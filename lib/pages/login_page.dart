// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_catlog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  get style => null;
  String name = "";
  bool changebutton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/loginIMG.png"),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Welcome $name",
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.pink),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Enter Usename", labelText: "Username"),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Enter Password", labelText: "Password"),
                  obscureText: true,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () async {
              setState(() {
                changebutton = true;
              });
              await Future.delayed(Duration(seconds: 1));
              Navigator.pushNamed(context, MyRoutes.homeRoute);
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              height: 60,
              width: 60,
              child: changebutton
                  ? Icon(
                      Icons.done,
                      color: Colors.white,
                    )
                  : Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: changebutton ? Colors.green : Colors.pink),
            ),
          ),
        ],
      ),
    );
  }
}
