import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Demo-lition',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Demo-lition'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.blue,
            ),
            child: Center(
              child: Text(
                'Welcome to Layout Demo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                    child: Center(
                      child: Text('Left'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.green,
                    child: Center(
                      child: Text('Center')
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.orange,
                    child: Center(
                      child: Text('Right'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.purple,
                    child: Center(
                      child: Text('Top Box'),
                    )
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.teal,
                    child: Center(
                      child: Text('Bottom Box'),
                    )
                  ),
                )
              ],
            ))
        ],
      ),
    );
  }
}


