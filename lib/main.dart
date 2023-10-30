import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double a = 00;
  void f(v) {
    setState(() {
      a = v;
    });
  }

  double a2 = 00;
  void f2(v2) {
    setState(() {
      a2 = v2;
    });
  }

  bool a1 = false;
  void f1(v1) {
    setState(() {
      a1 = v1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Container(
            width: 150,
            height: 40,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 223, 222, 222),
              borderRadius: BorderRadius.circular(60),
            ),
            child: Column(
              children: [
                Text(
                  'Settings',
                  style: TextStyle(fontSize: 25),
                ),
                Container(
                  width: 100,
                  height: 1,
                  color: Colors.blue,
                )
              ],
            ),
            alignment: Alignment.center,
          ),
        ),
        body: Container(
          width: 500,
          height: 700,
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(offset: Offset(0, 5), color: Colors.black, blurRadius: 8),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                const Row(
                  children: [
                    Text(
                      'Style',
                      style: TextStyle(fontSize: 25),
                    )
                  ],
                ),
                Container(
                  width: 550,
                  height: 1,
                  color: Colors.black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Read time',
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      a2.toString(),
                      style: const TextStyle(fontSize: 30),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Slider(
                      divisions: 100,
                      value: a2,
                      onChanged: f2,
                      max: 100,
                      min: 0,
                      label: a2.toString(),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Range',
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      a.toString(),
                      style: const TextStyle(fontSize: 30),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Slider(
                      divisions: 100,
                      value: a,
                      onChanged: f,
                      max: 100,
                      min: 0,
                      label: a.toString(),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20, top: 20),
                      child: Text(
                        'Format',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      child: Text(
                        'Seconds',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Count Down',
                      style: TextStyle(fontSize: 25),
                    ),
                    Switch(value: a1, onChanged: f1)
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  width: 500,
                  height: 1,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Text Color',
                      style: TextStyle(fontSize: 25),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                    )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        'Text Background',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: CircleAvatar(
                        backgroundColor: const Color.fromARGB(255, 72, 170, 251),
                      ),
                    )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        'Range Color                                     ',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 234, 251, 2),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
