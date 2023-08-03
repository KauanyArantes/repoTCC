import 'package:flutter/material.dart';

class ExemplosPage extends StatefulWidget {
  @override
  _ExemplosPageState createState() => _ExemplosPageState();
}

class _ExemplosPageState extends State<ExemplosPage> {
  bool _isPortuguesSelected = false;
  bool _isMatematicaSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material'),
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
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _isPortuguesSelected = true;
                            _isMatematicaSelected = false;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: _isPortuguesSelected
                              ? Color(0xFFF7BF3E)
                              : Color(0xFF1C6094),
                          textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 24,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        child: Text('Português'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _isPortuguesSelected = false;
                            _isMatematicaSelected = true;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: _isMatematicaSelected
                              ? Color(0xFFF7BF3E)
                              : Color(0xFF1C6094),
                          textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 24,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        child: Text('Matemática'),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    children: [
                      _buildImagemDescricao('assets/imagem1.png'),
                      _buildImagemDescricao('assets/imagem2.png'),
                      _buildImagemDescricao('assets/imagem3.png'),
                      _buildImagemDescricao('assets/imagem4.png'),
                      _buildImagemDescricao('assets/imagem5.png')
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImagemDescricao(String imagePath) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 270,
            height: 270,
          )
        ],
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
