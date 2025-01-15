import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smart_bite/login.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FlashPage(),
    )
);

class FlashPage extends StatefulWidget {
  const FlashPage({super.key});

  @override
  State<FlashPage> createState() => _FlashPageState();
}

class _FlashPageState extends State<FlashPage> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 4),(){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context)=> HomePage()
          ));
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              colors: [
                Colors.orange.shade900,
                Colors.orange.shade800,
                Colors.orange.shade400
          ])
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              Text("SmartBite", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 34),),
              SizedBox(height: 20,),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(80),
                    child: LinearProgressIndicator(
                      backgroundColor: Colors.red,
                      semanticsLabel: "Initializing...",
                      borderRadius: BorderRadius.circular(10),
                      minHeight: 15,
                    ),
                  ),
                ],
              )
            ]
          ),
        ),
      ),
    );
  }
}





