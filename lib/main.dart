import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Destini App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const StoryPage(),
    );
  }
}

class StoryPage extends StatefulWidget {
  const StoryPage();

  @override
  State<StoryPage> createState() => _StoryPage();
}

class _StoryPage extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(



        body: SafeArea(
          child:  Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
          Expanded(
          flex: 12,
          child: Center(
            child: Text(
              //TODO: Step 10 - use the storyBrain to get the first story title and display it in this Text Widget.
              'Story text will go here.',
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
          ),
        )
              ]
        ),
        )
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
