import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
          const Text("Welcome"),
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
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Enter Password", labelText: "Password"),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                print("Pressed");
              },
              child: const Text("Login"))
        ],
      ),
    );
  }
}
