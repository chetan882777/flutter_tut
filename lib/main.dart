import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  Color color = Colors.blue;
  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'aao kabhi haveli pe',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'aao kabhi haveli pe fir se',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        Text('41')
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter layout demo',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter layout demo'),
          ),
          body: ListView(
            children:[
              Image.asset(
                'images/lake.jpg',
                width: 600,
                height: 200,
                fit: BoxFit.cover,
              ),
              titleSection,
              bottonSelection,
              textSection
            ],
          ),
        )
    );
  }


  Widget bottonSelection = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildButtonColumn(Colors.blue, Icons.call, 'CALL'),
        _buildButtonColumn(Colors.blue, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(Colors.blue, Icons.share, 'SHARE'),
      ],
    ),
  );

  static Column _buildButtonColumn(Color color, IconData icon, String label){
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon , color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color
            ),
          ),
        )

      ],
    );
  }

  Widget textSection = Container(
    padding: const EdgeInsets.all(32),
    child: Text(
      'adkfhld alksh lks aslkh aksld dhask hdkl hDHLKS DHkldh LDH ASLDHld sl '
          'sjdgskjdgaksjdgasjfagsjsdlkKDGLJFGAF SLGLKSD GG KLDGASLD GDAGD LKAG'
          'SKLDF HDSALK HKLDF KLJA KAJ DHDFAF  LAKHFSD SKSKDS FGSGSDF GSFKAS AK A'
          ' ALKF GDKFAGSL AAFL FLSFOIQ JDE  F AJF YKMDN DJA JAGM GVZKGAKF GAGL ZL '
          ' AFGZGH,EI IA  G,Z A EFGAU GMJGZMGWI YHGKWIHKSMDV ZIHAEII FHKIHY LIZL ',
      softWrap: true,
    ),
  );
}
