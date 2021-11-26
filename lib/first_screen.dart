import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
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
                Navigator.pushNamed(context, '/second');
                // Navigate back to the first screen by popping the current route
                // off the stack.
                // Navigator.pop(context);
              },
              child: const Text('Second Screen'),
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