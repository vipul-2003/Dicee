import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
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
          //   Image(
          //   width: 200.0,
          //   height: 200.0,
          //   image: AssetImage("images/dice1.png"),
          //   ),

          Expanded(
            //by default flex set to 1
            //flex: 1, // it is used to set the size of object to 2 twice big
            // as that of another expanded widget image (dice2.png)
            // but not that much big that both of them fills the screen
            child: FlatButton(
              onPressed: () {
                print('Left Button Is Pressed!');
              },
              child: Image.asset('images/dice1.png'),
            ),

            /*Image(
            image: AssetImage('images/dice1.png'),  ),
          */
          ),

          Expanded(
            // flex: 1,

            child: FlatButton(
              onPressed: () {
                print('Right Button Is Pressed!');
              },
              child: Image.asset('images/dice2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
