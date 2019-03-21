import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter layout demo',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter layout demo'),
          ),
          body: Container(child: _buildStack()),
        ));
  }

  Widget _buildStack() => Stack(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/lake.jpg'),
            radius: 100,
          ),
          Positioned(
            bottom: 50,
            right: 50,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black45,
              ),
              child: Text(
                'Mia B',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 50,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black45,
              ),
              child: Text(
                'London',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      );
}
