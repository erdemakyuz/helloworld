import 'package:dynamic_icons/dynamic_icons.dart';
import 'package:flutter/material.dart';

import '../main/MainScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextField getUserName() {
    return (TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(), labelText: "Kullanıcı Adı")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        body: SafeArea(
            child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Expanded(flex: 2, child: Container()),
            getUserName(),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Şifre"),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {
                print("Buton tıklandı.");
                /*Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainScreen()));*/
                Navigator.pushReplacementNamed(context, "/Main");
              },
              icon: DynamicIcons.getIconFromName("input"),
              label: Text("Giriş Yap"),
            ),
            Expanded(flex: 1, child: Container()),
          ]),
        )));
  }
}
