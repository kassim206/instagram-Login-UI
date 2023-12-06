import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Firstpage extends StatefulWidget {
  const Firstpage({Key?key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}
class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Container(
        height: 500,
        width: 300,
        child: TextFormField(
        ),
      ),
    );
  }
}
