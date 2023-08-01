import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:url_launcher/url_launcher.dart';

class VoteMain extends StatefulWidget {
  VoteMain({super.key});
  final url_receive = Uri.parse(
      'https://cronos.org/explorer/testnet3/address/0xdD2FD4581271e230360230F9337D5c0430Bf44C0');
  final url_send = Uri.parse(
      'https://cronos.org/explorer/testnet3/address/0x0006A44f1D5224a621234758F013EBF1Fd9291d7');

  final List<Tab> myTabs = <Tab>[
    Tab(text: '투표 진행'),
    Tab(text: '투표 완료'),
  ];
  var setbool = false;

  @override
  State<VoteMain> createState() => _VoteMainState();
}

class _VoteMainState extends State<VoteMain> {
  Future<void> _launchUrl(_url) async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(color: Color(0xff0671E6)),
          child: Column(children: [
            SizedBox(height: 45),
            Row(
              children: [
                SizedBox(width: 20),
                Image.asset("assets/images/left_arrow.png",
                    color: Colors.white, height: 16),
                SizedBox(width: 110),
                Text(
                  "[디자인학과] 학생회",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )
              ],
            ),
            SizedBox(height: 30),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 47),
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                        padding: EdgeInsets.fromLTRB(23, 20, 23, 0),
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            Text(
                              "모인 금액",
                              style: TextStyle(
                                  color: Color(0xff0671E6), fontSize: 16),
                            ),
                            SizedBox(height: 6),
                            Text(
                              "15,540,000원",
                              style: TextStyle(
                                  color: Color(0xff0671E6), fontSize: 30),
                            ),
                            SizedBox(height: 11),
                            InkWell(
                              onTap: () async {
                                await _launchUrl(widget.url_receive);
                              },
                              child: Container(
                                width: 152,
                                height: 42,
                                child: Center(
                                  child: Text(
                                    "블록체인 트랜잭션",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xff0671E6),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            )
                          ],
                        )),
                    SizedBox(width: 12),
                    Container(
                        padding: EdgeInsets.fromLTRB(23, 20, 23, 0),
                        width: 320,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            Text(
                              "사용 금액",
                              style: TextStyle(
                                  color: Color(0xff0671E6), fontSize: 16),
                            ),
                            SizedBox(height: 6),
                            Text(
                              "3,150,000원",
                              style: TextStyle(
                                  color: Color(0xff0671E6), fontSize: 30),
                            ),
                            SizedBox(height: 11),
                            InkWell(
                              onTap: () async {
                                await _launchUrl(widget.url_send);
                              },
                              child: Container(
                                width: 152,
                                height: 42,
                                child: Center(
                                  child: Text(
                                    "블록체인 트랜잭션",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xff0671E6),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            )
                          ],
                        )),
                    SizedBox(width: 20),
                  ],
                ),
              ),
            ),
          ]),
        ),
        Row(
          children: [
            InkWell(
                onTap: () {
                  if (widget.setbool == false) {
                    widget.setbool = true;
                    setState(() {});
                  }
                },
                child: Container(
                  child: Text(
                    "진행예정",
                    style: TextStyle(
                        color: widget.setbool ? Colors.blue : Colors.grey),
                  ),
                ))
          ],
        )
      ],
    ));
  }
}
