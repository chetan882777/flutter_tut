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
          body: Container(child: _buildGrid()),
        ));
  }

  Widget _buildGrid() {
    return GridView.extent(
      
      maxCrossAxisExtent: 150,
      padding: const EdgeInsets.all(4.0),
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: _buildGridTileList(30),
    );
  }

  List<Container> _buildGridTileList(count) {
    return List.generate(
        count,
        (i) => Container(
              child: Image.asset('images/lake.jpg'),
            ));
  }
}
