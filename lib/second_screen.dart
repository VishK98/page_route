import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 50,
            padding: EdgeInsets.all(5),
            child: ElevatedButton(
              // Within the SecondScreen widget
              onPressed: () {
                //Navigator.pushNamed(context, '/second');
                // Navigate back to the first screen by popping the current route
                // off the stack.
                Navigator.pop(context);
              },
              child: const Text('Go back!'),
            ),
          ),
          Container(
            width: 200,
            height: 50,
            padding: EdgeInsets.all(5),
            child: ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/third');
            },
                child: Text("Third Screen")),
          )
        ],

      ),
    );
  }
}