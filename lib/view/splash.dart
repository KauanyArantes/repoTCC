import 'package:flutter/material.dart';
import 'package:playground/view/menu.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool _logo = true;
  int _transicao = 0;

  @override
  void initState() {
    super.initState();
    // Define um tempo de espera de 1 segundos antes de mudar a imagem
    Future.delayed(Duration(seconds: 1), _animacao);
  }

  void _animacao() {
    setState(() {
      //contador de transições
      _transicao++;
      _logo = !_logo;

      if (_transicao < 7) {
        // Espera mais 0,5 segundo antes de fazer outra transição
        Future.delayed(Duration(milliseconds: 800), _animacao);
      } else {
        //Se atingir o limite, navega para a próxima tela
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Menu(0)));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFCB1B1),
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
            Center(
              child: Container(
                width: 200,
                height: 191,
                decoration: BoxDecoration(
                  color: Color(0xFFF9A320),
                  borderRadius: BorderRadius.circular(200),
                ),
                child: AnimatedSwitcher(
                  duration: Duration(milliseconds: 200),
                  child: _logo
                      ? Image.asset(
                          'assets/logo1.png',
                          key: UniqueKey(),
                          width: 168,
                          height: 170,
                        )
                      : Image.asset(
                          'assets/logo2.png',
                          key: UniqueKey(),
                          width: 141,
                          height: 142,
                        ),
                ),
              ),
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
    final paint = Paint()..color = Colors.pink.shade200;
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
