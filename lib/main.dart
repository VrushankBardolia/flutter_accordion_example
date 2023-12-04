import '../accordion.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Accordion',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const Home()
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Accordion')),

      body: Center(
        child: Column(
          children: [
            const Text('Accordion Example'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Accordion(
                title: Text('Hello',style: Theme.of(context).textTheme.headlineMedium,),
                subTitle: [
                  Text('Welcome',style: Theme.of(context).textTheme.titleMedium),
                  Text('Back',style: Theme.of(context).textTheme.titleMedium),
                ],
                borderColor: Colors.black,
                // titleBackgroundColor: Colors.blue.shade500,
                // subtitleBackgroundColor: Colors.blue.shade50,
                // contentPadding: 8,
                // borderRadius: 4,
                // borderColor: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
