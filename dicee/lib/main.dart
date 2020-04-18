import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('left button got pressed.');
              },
              child: Image.asset('images/dice1.png'), // first form
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('right button got pressed.');
              },
              child: Image(
                image: AssetImage('images/dice1.png'), // second form
              ),
            ),
          ),
        ],
      ),
    );
  }
}
