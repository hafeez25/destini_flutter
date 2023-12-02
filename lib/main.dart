import 'package:flutter/material.dart';
import 'package:destini_app/story_brain.dart';
StoryBrain storyBrain = StoryBrain();

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Destini App',
      debugShowCheckedModeBanner: false,
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

      return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.png"),
              fit: BoxFit.cover),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    //TODO: Step 10 - use the storyBrain to get the first story title and display it in this Text Widget.
                    storyBrain.getStory(),
                    style: TextStyle(
                      fontSize: 25.0,

                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero))),
                  child:  Text(
                    storyBrain.getChoice1(),
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      storyBrain.nextStory(2);

                    });
                  },
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                //TODO: Step 26 - Use a Flutter Visibility Widget to wrap this FlatButton.
                //TODO: Step 28 - Set the "visible" property of the Visibility Widget to equal the output from the buttonShouldBeVisible() method in the storyBrain.
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero))),
                  child:  Text(
                  storyBrain.getChoice2(),
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      storyBrain.nextStory(2);

                    });

                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
