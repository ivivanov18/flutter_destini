import 'package:flutter/material.dart';
import 'package:flutter_destini/story_brain.dart';
import 'story_brain.dart';

StoryBrain storyBrain = StoryBrain();

void main() => runApp(DestiniGame());

class DestiniGame extends StatefulWidget {
  @override
  _DestiniGameState createState() => _DestiniGameState();
}

class _DestiniGameState extends State<DestiniGame> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
              padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/background.png'),
                    fit: BoxFit.cover),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    flex: 12,
                    child: Center(
                      child: Text(
                        storyBrain.getStory(),
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: FlatButton(
                      onPressed: () {},
                      color: Colors.red,
                      child: Text(
                        storyBrain.getChoice1(),
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Expanded(
                    flex: 2,
                    child: FlatButton(
                      onPressed: () {},
                      color: Colors.blue,
                      child: Text(
                        storyBrain.getChoice2(),
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
