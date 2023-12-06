import 'package:flutter/material.dart';
import 'package:lucky_homework_2cw3/animate.dart';
import 'package:lucky_homework_2cw3/ball.dart';
import 'package:lucky_homework_2cw3/cross.dart';
import 'package:lucky_homework_2cw3/invisible.dart';


class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("ANIMATEDCONTAINER")),
      ),
      body: SafeArea(
          child: Column(
          children: [
         at_container(),
          Divider(),
          invisible (),
          Divider(),
          CrossFade(),
          ElevatedButton(
                onPressed: () {
                  MaterialPageRoute r = MaterialPageRoute(
                      builder: (BuildContext context) => balloon());
                  Navigator.of(context).push(r);
                },
                child: Text("This a BOOM!")),
        ],
      )),
    );
  }
}