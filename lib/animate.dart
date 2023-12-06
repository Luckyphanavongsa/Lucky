import 'package:flutter/material.dart';

class at_container extends StatefulWidget {
  const at_container({super.key});

  @override
  State<at_container> createState() => _at_containerState();
}

class _at_containerState extends State<at_container> {
  double _w = 100.0;
  double _h = 100.0;

  void _increaseW(){
    setState(() {
      _w = _w >= 400.0 ? 100.0 : _w +=50.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(16.0),child: Text("AnimatedContainer"),
        ),
        Row(
          children: [
            AnimatedContainer(duration: Duration(milliseconds: 500),curve: Curves.elasticInOut,height: _h, width: _w, 
            child: ElevatedButton(child: Text("Tap to\nGrow with\n$_w"),
                                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                                  onPressed: (){
                                       _increaseW();
                                  }),
            )
          ],
        ),
      ],
    );
  }
}