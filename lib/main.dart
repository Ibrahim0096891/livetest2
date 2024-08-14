import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Styling App'),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Flutter Text Styling',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),

          Text(
            'Experiment with text styles',
            style: TextStyle(
              fontSize: 16.0,
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(height: 5.0),

          TextButton(
            onPressed: () {

                print('You clicked the button!');
            },
            child: Text('Click Me'),
          ),
          SizedBox(height: 1.0),

          Text.rich(
            TextSpan(
              text: 'Welcome to ',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              children:[
                TextSpan(
                  text: 'Flutter!',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}
