import 'package:flutter/material.dart';

class ProjetoPage extends StatefulWidget {
  @override
  _ProjetoPageState createState() => _ProjetoPageState();
}

class _ProjetoPageState extends State<ProjetoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre o projeto'),
        backgroundColor: Color(0xFF1C6094),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.pink.shade300,
              Color(0xFFFFF0F0),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.2, 1.0],
          ),
        ),
        child: Stack(
          children: [
            CustomPaint(
              painter: SquarePainter(),
              size: MediaQuery.of(context).size,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text("Meu projeto")],
            ),
          ],
        ),
      ),
    );
  }
}

class SquarePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.pink.shade100;
    final squareSize = size.width / 20;
    for (double x = 0; x < size.width; x += squareSize) {
      for (double y = 0; y < size.height; y += squareSize) {
        canvas.drawRect(
          Rect.fromLTWH(x, y, squareSize, squareSize),
          paint,
        );
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
