import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 167, 68, 61),
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.notifications), SizedBox(width: 15.0,)],
      ),
      body: Stack(children: [
        backGround(),
        Positioned(child: ImageAndName(),
          left: 20, top: 10,
        ),
        Positioned(child: ScheduleEventsRoutines(),
        right: 20 , top: 50,),
        Positioned(child: savingsAndGoals(),
          right: 20,
          top: 150,
        ),
        Positioned(child: Details(),
        left: 20, top: 280,),
        Positioned(child: Button(),
        right: 50, top: 220,)
      ]),
    );
  }
}

class savingsAndGoals extends StatelessWidget {
  const savingsAndGoals({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Column(
          children: [
            Text('data'),
            Text('data')
          ],
        ),
        SizedBox(width: screenWidth * .15,),
        Column(
          children: [
            Text('data'),
            Text('data')
          ],
        )
      ],
    );
  }
}

class ImageAndName extends StatelessWidget {
  const ImageAndName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            CircleAvatar(
              radius: 50,
              ),
              SizedBox(height: 20,),
              Text('Rishabh Lalwani')
          ],
        ),
      ],
    );
  }
}

class ScheduleEventsRoutines extends StatelessWidget {
  const ScheduleEventsRoutines({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Column(
          children: [
            Text('data'),
            Text('data')
          ],
        ),
        SizedBox(width: screenWidth * 0.15,),
        Column(
          children: [
            Text('data'),
            Text('data')
          ],
        ),
         SizedBox(width: screenWidth * 0.15,),
        Column(
          children: [
            Text('data'),
            Text('data')
          ],
        )
      ],
    );
  }
}

class backGround extends StatelessWidget {
  const backGround({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: Painter(),
      child: Container(
        width: double.infinity,
        height: double.infinity,
      ),
    );
      
  }
}

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('data'),
        Text('data'),
        SizedBox(height: 20,),
        Text('data'),
        Text('data'),
        SizedBox(height: 20,),
        Text('data'),
        Text('data'),
        SizedBox(height: 20,),
        Text('data'),
        Text('data'),
        SizedBox(height: 20,),
        Text('data'),
        Text('data'),
      ],
    );
  }
}

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(angle: math.pi * 13 / 180, child: ElevatedButton(onPressed: () {  }, child: Text('Edit Profile'),));
  }
}

class Painter extends CustomPainter {  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromARGB(255, 167, 68, 61) // Color for the area above the line
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height * 0.4) // Adjust this value to change the tilt angle
      ..lineTo(0, size.height)
      ..close();

    canvas.drawPath(path, paint);

    final paint2 = Paint()
      ..color = Colors.white // Color for the area below the line
      ..style = PaintingStyle.fill;

    final path2 = Path()
      ..moveTo(0, 200)
      ..lineTo(size.width, size.height * 0.4) // Adjust this value to change the tilt angle (should be the same as above)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
    
  }
}
