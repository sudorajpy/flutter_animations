import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _height = 100.0;
  var _width = 100.0;
  bool _isToggle = true;

  Decoration _decoration = BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    gradient: LinearGradient(
      colors: [
        Colors.deepPurple,
        Colors.deepPurpleAccent,
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter Animations'),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            AnimatedContainer(
              duration: Duration(seconds: 2),
              height: _height,
              width: _width,
              // color: Colors.deepPurple,
              decoration: _decoration,
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (_isToggle) {
                    _height = 100;
                    _width = 100;
                    _decoration = BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient:const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 76, 10, 191),
                          Color.fromARGB(255, 168, 97, 22),
                        ],
                      ),
                    );
                    _isToggle = false;
                  } else {
                    _height = 200;
                    _width = 200;
                    _decoration = BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient:const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 168, 97, 22),
                          Color.fromARGB(255, 76, 10, 191),
                        ],
                      ),
                    );
                    _isToggle = true;
                  }
                });
              },
              child: Text('Animate'),
            ),
            
          ],
        ),
      ),
    );
  }
}
