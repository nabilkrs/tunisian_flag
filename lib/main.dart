import 'package:flutter/material.dart';
import 'dart:ui' as ui;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
            child: Center(
          child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border(),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Stack(
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                      // -------Designed By Nabil Krissane-------
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15, left: 15, bottom: 15),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: CustomPaint(
                              size: Size(200, (200 * 1).toDouble()),
                              painter: Star(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ))),
        )));
  }
}

//Copy this CustomPainter code to the Bottom of the File
class Star extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3333333, size.height * 0.03333333);
    path_0.lineTo(size.width * 0.1333333, size.height * 0.6000000);
    path_0.lineTo(size.width * 0.6333333, size.height * 0.2000000);
    path_0.lineTo(size.width * 0.03333333, size.height * 0.2000000);
    path_0.lineTo(size.width * 0.5333333, size.height * 0.6000000);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Colors.red.withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
