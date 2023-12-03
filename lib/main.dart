import 'package:accordian/accordion.dart';
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
            Accordion(
              title: Text('Hello',style: Theme.of(context).textTheme.headlineMedium,),
              subTitle: [
                Text('Welcome',style: Theme.of(context).textTheme.titleMedium),
                Text('Back',style: Theme.of(context).textTheme.titleMedium),
              ],
              borderColor: Colors.brown.shade900,
              titleBackgroundColor: Colors.blue.shade100,
              // borderRadius: 20,
            )
          ],
        ),
      ),
    );
  }
}
