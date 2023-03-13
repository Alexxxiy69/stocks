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
  List x = [
    300.0,
    300.0,
    300.0,
    300.0,
    300.0,
    300.0,
    300.0,
    300.0,
    300.0,
    300.0,
    300.0,
    300.0,
    300.0,
    300.0,
    300.0,
    300.0,
    300.0,
    300.0,
    300.0,
    300.0,
    300.0,
    300.0,
    300.0,
    300.0,
    300.0,
    300.0,
    300.0,
    300.0,
    300.0,
    300.0,
  ];
  List y = [
    150.0,
    150.0,
    150.0,
    150.0,
    150.0,
    150.0,
    150.0,
    150.0,
    150.0,
    150.0,
    150.0,
    150.0,
    150.0,
    150.0,
    150.0,
    150.0,
    150.0,
    150.0,
    150.0,
    150.0,
    150.0,
    150.0,
    150.0,
    150.0,
    150.0,
    150.0,
    150.0,
    150.0,
    150.0,
    150.0,
  ];
  int i = 0;

  void generate() {
    x[i] = x[i] - 10;
    y[i] = y[i] + Random().nextInt(60) - 30;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var pointMode = ui.PointMode.polygon;
    var points = [
      Offset(x[0], y[0]),
      Offset(x[1], y[1]),
      Offset(x[2], y[2]),
      Offset(x[3], y[3]),
      Offset(x[4], y[4]),
      Offset(x[5], y[5]),
      Offset(x[6], y[6]),
      Offset(x[7], y[7]),
      Offset(x[8], y[8]),
      Offset(x[9], y[9]),
      Offset(x[10], y[10]),
      Offset(x[11], y[11]),
      Offset(x[12], y[12]),
      Offset(x[13], y[13]),
      Offset(x[14], y[14]),
      Offset(x[15], y[15]),
      Offset(x[16], y[16]),
      Offset(x[17], y[17]),
      Offset(x[18], y[18]),
      Offset(x[19], y[19]),
      Offset(x[20], y[20]),
      Offset(x[21], y[21]),
      Offset(x[22], y[22]),
      Offset(x[23], y[23]),
      Offset(x[24], y[24]),
      Offset(x[25], y[25]),
      Offset(x[26], y[26]),
      Offset(x[27], y[27]),
      Offset(x[28], y[28]),
      Offset(x[29], y[29]),
    ];

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
