import 'package:flutter/material.dart';

void main() => runApp(const MyDemoApp());

class MyDemoApp extends StatelessWidget {
  const MyDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false, primarySwatch: Colors.cyan),
      title: 'Button Nav Flutter Demo',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _navigate(BuildContext context, String pageTitle) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TargetPage(title: pageTitle)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Button Nav Flutter Demo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 70),
              ),
              child: const Text('Elevated Button'),
              onPressed: () {
                _navigate(context, 'Elevated Button 1');
              },
            ),
            const SizedBox(height: 16.0),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.indigo,
                minimumSize: const Size(double.infinity, 70),
              ),
              child: const Text('Outlined Button'),
              onPressed: () {
                _navigate(context, 'Outlined Button 1');
              },
            ),
            const SizedBox(height: 16.0),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.indigo,
                minimumSize: const Size(double.infinity, 70),
              ),
              child: const Text('Text Button'),
              onPressed: () {
                _navigate(context, 'Text Button 1');
              },
            ),
            const SizedBox(height: 16.0),
            IconButton(
              icon: const Icon(Icons.arrow_forward),
              iconSize: 50,
              onPressed: () {
                _navigate(context, 'Icon Button 1');
              },
            ),
            const SizedBox(height: 16.0),
            InkWell(
              onTap: () {
                _navigate(context, 'InkWell Button 1');
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: const Text(
                  'InkWell Button',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TargetPage extends StatelessWidget {
  final String title;

  const TargetPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: ElevatedButton.icon(
          icon: const Icon(Icons.arrow_back),
          label: const Text('Back to Home'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
