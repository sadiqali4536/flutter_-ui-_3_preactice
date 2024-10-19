import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _loadCounter();
  }

  Future<void> _loadCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0);
    });
  }

  Future<void> _incrementCounter() async {
    setState(() {
      _counter++;
    });
    await _saveCounter();
  }

  Future<void> _restartCounter() async {
    setState(() {
      _counter = 0;
    });
    await _saveCounter();
  }

  Future<void> _saveCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('counter', _counter);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 208, 216, 211),
        appBar: AppBar(title: const Text('Counter App')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$_counter',
                style: const TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _incrementCounter,
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 60), 
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30), 
                ),
                child: const Text(
                  'Add',
                  style: TextStyle(fontSize: 24), 
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: _restartCounter,
                child: const Text('Restart'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
