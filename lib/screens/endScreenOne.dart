import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:labor/screens/endScreenTwo.dart';

class EndScreenOne extends StatefulWidget {
  const EndScreenOne({super.key});

  @override
  State<EndScreenOne> createState() => _EndScreenOneState();
}

class _EndScreenOneState extends State<EndScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Image.asset("assets/images/before_vote_new.png"),
            InkWell(
              onTap: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 200,
                      color: Colors.white,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const Text('투표해주세요!'),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  child: const Text('찬성'),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                EndScreenTwo()));
                                  },
                                ),
                                SizedBox(width: 40),
                                ElevatedButton(
                                  child: const Text('반대'),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                EndScreenTwo()));
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Container(
                  width: 353,
                  height: 52,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff0671E6)),
                  child: Center(
                    child: Text(
                      "투표 하기",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  )),
            )
          ],
        ));
  }
}
