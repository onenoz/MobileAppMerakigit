import 'package:flutter/material.dart';

class TemplateScreen extends StatefulWidget{
  @override
  TemplateScreenState createState() => TemplateScreenState();
}

class TemplateScreenState extends State<TemplateScreen> {
  @override
  Widget build (BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(child: Text("Template Screen"),
        )
        ),
        );
  }
}