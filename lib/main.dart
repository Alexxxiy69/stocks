import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: HomeWidget(),
      ),
    );
  }
}

class HomeWidget extends StatefulWidget {
  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomPaint(
        //                       <-- CustomPaint widget
        size: Size(300, 300),
        painter: MyPainter(),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  List x = List.generate(30, (index) => 300.0);
  List y = List.generate(30, (index) => 150.0);
  int i = 0;

  void generate() {
    x[i] = x[i] - 10;
    y[i] = y[i] + Random().nextInt(60) - 30;
  }

  @override
  void paint(Canvas canvas, Size size) {
    print(x);
    var pointMode = ui.PointMode.polygon;
    var points = List.generate(30, (index) => Offset(x[i], y[i]));

    for (i; i < 29; i++) {
      print(x[i]);
      generate();
      var paint = Paint()
        ..color = Colors.black
        ..strokeWidth = 4
        ..strokeCap = StrokeCap.round;
      canvas.drawPoints(pointMode, points, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  }
}
