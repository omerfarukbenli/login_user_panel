import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/giris.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var t1 = TextEditingController();
  var t2 = TextEditingController();
  var parola = "12345";
  var kullaniciadi = "omer";
  var yazi = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GirişPaneli'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: TextField(
                  textAlign: TextAlign.center,
                  controller: t1,
                  decoration: const InputDecoration(
                    labelText: 'kullanıcı adını giriniz',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              TextField(
                textAlign: TextAlign.center,
                obscureText: true,
                keyboardType: TextInputType.number,
                controller: t2,
                decoration: const InputDecoration(
                  labelText: 'Şifrenizi giriniz',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (t1.text == kullaniciadi && parola == t2.text) {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Giris()),
                      );
                    });
                  } else {
                    setState(() {
                      yazi = "Yanlış kullanıcı adı veya şifre girdiniz";
                    });
                  }
                },
                child: const Text('Giriş'),
              ),
              Text(
                yazi,
                style: const TextStyle(fontSize: 20, color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
