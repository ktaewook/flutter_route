import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', // 첫 화면을 '/'로 설정
      routes: {
        '/': (context) => ColorPage(color: Colors.green), // 첫 화면을 초록색 페이지로 설정
        '/red': (context) =>
            ColorPage(color: Colors.red), // '/red' 라우트는 빨간색 페이지로 설정
        '/blue': (context) =>
            ColorPage(color: Colors.blue), // '/blue' 라우트는 파란색 페이지로 설정
      },
    );
  }
}

class ColorPage extends StatelessWidget {
  final Color color;

  ColorPage({required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Page'),
      ),
      backgroundColor: color,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Current Page Color',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/red');
              },
              child: Text('Go to Red'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/blue');
              },
              child: Text('Go to Blue'),
            ),
          ],
        ),
      ),
    );
  }
}
