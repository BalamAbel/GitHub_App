import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/widgets.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    @override
   
   

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter layout demo',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter layout demo'),
          ),
          body: Column(
            children: [
              Image.asset(
                'assets/imagenes/lake.jpg',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
              titleSection,
              ButtonSection(),
              textSection
            ],
          )),
    );
  }
}
class ButtonSection extends StatelessWidget {

   Column _buildColumn(IconData icon, String label, Color color,
    BuildContext context, String msg) {
    return Column(
      children: [
        IconButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(duration: const Duration(seconds: 1), content: Text(msg)));
          },
          icon: Icon(
            icon,
            size: 25,
          ),
          color: color,
        ),
        Text(label),
      ],
    );
  }



  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildColumn(Icons.call, 'CALL', color, context, 'LLamando a'),
        _buildColumn(Icons.near_me, 'ROUTE', color, context, 'Trasladando a'),
        _buildColumn(Icons.share, 'SHARE', color, context, 'Compartiendo a')
      ],
    );
  }
}

