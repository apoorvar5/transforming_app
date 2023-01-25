import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const App(),
    );
  }
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Transform.rotate(
              alignment: Alignment.bottomRight,
              angle: -.60,
              child: Container(
                height: 150,
                width: 150,
                color: Colors.orangeAccent,
                child: Center(
                  child: Text(
                    'Box 1',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 90,
            ),
            RotatedBox(
              quarterTurns: 2,
              child: Container(
                height: 150,
                width: 150,
                color: Colors.blueAccent,
                child: Center(
                  child: Text(
                    'Box 2',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Draggable(
                  feedback: Material(
                    child: Container(
                      height: 150,
                      width: 150,
                      color: Colors.lightGreenAccent,
                      child: Center(
                        child: Text(
                          'Dragging',
                        ),
                      ),
                    ),
                  ),
                  childWhenDragging: CircleAvatar(
                    radius: 75,
                    backgroundColor: Colors.lightBlueAccent,
                    child: Text(
                      'Next',
                    ),
                  ),
                  child: Container(
                    height: 150,
                    width: 150,
                    color: Colors.green,
                    child: Center(
                      child: Text(
                        'Box 3',
                      ),
                    ),
                  ),
                ),
                Transform.scale(
                  scale: 2,
                  child: Container(
                    height: 150,
                    width: 150,
                    color: Colors.green,
                    child: Center(
                      child: Text(
                        'Box 3',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Transform.translate(
              offset: Offset(-130, 25),
              child: Container(
                height: 150,
                width: 150,
                color: Colors.yellowAccent,
                child: Center(
                  child: Text(
                    'Box 4',
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
