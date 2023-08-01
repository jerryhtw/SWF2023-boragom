import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:labor/screens/page2.dart';

class EndScreenTwo extends StatefulWidget {
  const EndScreenTwo({super.key});

  @override
  State<EndScreenTwo> createState() => _EndScreenTwoState();
}

class _EndScreenTwoState extends State<EndScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Page2()));
                },
                child: Image.asset('assets/images/after_vote_new.png')),
            Container(
                width: 353,
                height: 52,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff0671E6)),
                child: Center(
                  child: Text(
                    "투표 완료",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                )),
          ],
        ));
  }
}
