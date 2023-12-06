import 'package:flutter/material.dart';

class invisible extends StatefulWidget {
  const invisible({super.key});

  @override
  State<invisible> createState() => _invisibleState();
}

class _invisibleState extends State<invisible> {
  double _opacity =1.0;
  void _animatedopacity(){
    setState(() {
      _opacity = _opacity == 1.0 ? 0.3 : 1.0;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("AnimatedOpacity"),
        Row(
          children: [
            AnimatedOpacity(opacity: _opacity, duration: Duration(milliseconds: 400), child: Container(height: 100.0,width: 100.0,
            child: ElevatedButton(onPressed: (){
              _animatedopacity();
            },
            child: Text('Tap tp Fade'),
            style: ElevatedButton.styleFrom(primary: Colors.black)
                ,)
              ,)
            ,)
          ],
        )
      ],
    );
  }
}