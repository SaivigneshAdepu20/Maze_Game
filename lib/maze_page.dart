import 'package:flutter/material.dart';
import 'package:maze/maze.dart';

class MazePage extends StatefulWidget {
  const MazePage({Key? key}) : super(key: key);

  @override
  _MazePageState createState() => _MazePageState();
}

class _MazePageState extends State<MazePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Maze(
          player: MazeItem(
              'https://image.flaticon.com/icons/png/512/808/808433.png',
              ImageType.network),
          columns: 4,
          rows: 4,
          wallColor: Theme.of(context).primaryColor,
          wallThickness: 4,
          finish: MazeItem(
              'https://image.flaticon.com/icons/png/512/1506/1506339.png',
              ImageType.network),
          onFinish: () => print('Game Finished'),
        ),
      ),
    );
  }
}
