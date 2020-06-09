import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class MyCode extends StatefulWidget {
  @override
  _MyCodeState createState() => _MyCodeState();
}

class _MyCodeState extends State<MyCode> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          _buildPlayNote(Colors.red,1),
          _buildPlayNote(Colors.deepOrange,2),
          _buildPlayNote(Colors.yellow.shade500,3),
          _buildPlayNote(Colors.green,4),
          _buildPlayNote(Colors.blue,5),
          _buildPlayNote(Colors.blueGrey,6),
          _buildPlayNote(Colors.purple,7),
        ],
      ),
    );
  }

  Widget _buildPlayNote(Color color,int id){
    return Expanded(
      child: GestureDetector(
        child: Container(
          width: double.infinity,
          color: color,
        ),
        onTap: (){
          final player = AudioCache();
          player.play('note$id.wav');
        },
      ),
    );
  }
}
