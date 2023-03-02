import 'package:aunthentication_without_password/connection_checker_demo.dart';
import 'package:flutter/material.dart';
import 'package:magic_sdk/magic_sdk.dart';
import 'home.dart';

void main(){
  runApp(const MyApp());
  Magic.instance = Magic("pk_live_1D0F14960042C879");
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Authentication',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // useMaterial3: true,
        primarySwatch: Colors.purple
      ),
      home: Stack(
        children: const [
          ConnectionCheckerDemo(),
        ],
      ),
    );
  }
}
