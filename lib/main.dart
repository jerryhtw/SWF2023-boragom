import 'package:flutter/material.dart';
import 'package:labor/screens/enrollGroup.dart';
import 'package:labor/screens/pollContinuePage.dart';
import 'package:labor/screens/pollEndedPage.dart';
import 'package:labor/screens/transactionPage.dart';

void main() {
  runApp(MyApp());
}

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: FrontPage(),
    );
  }
}

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEEEEE),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 30),
                Text(
                  "My 그룹",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ],
            ),
            SizedBox(height: 12),
            Container(
              //margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffFFFFFF)),
              width: 353,
              height: 146,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "회비를 송금해",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "그룹에 참여하세요",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(height: 12),
                    Center(
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => EnrollGroup()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffE5EFFB),
                              ),
                              width: 152,
                              height: 48,
                              child: Center(
                                child: Text("송금하기",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Color(0xff0671E6))),
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xffE5EFFB),
                            ),
                            width: 152,
                            height: 48,
                            child: Center(
                              child: Text("송금내역",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Color(0xff0671E6))),
                            ),
                          )
                        ],
                      ),
                    )
                  ]),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
                width: 353,
                height: 160,
                padding: EdgeInsets.fromLTRB(21, 16, 21, 13),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffFFFFFF)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/profile1.png',
                            height: 58, width: 58),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("[디자인학과]학생회비",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Color(0xff000000))),
                            SizedBox(height: 8),
                            Text("운영자 강해린",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Color(0xff9E9E9E))),
                          ],
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Image.asset("assets/images/arrow.png",
                                    width: 8, height: 16),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15),
                    Container(
                        height: 1,
                        width: double.infinity,
                        color: Color(0xffD9D9D9)),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("총 송금금액",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Color(0xff9E9E9E))),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("0원",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color(0xff000000))),
                      ],
                    )
                  ],
                )),
            SizedBox(
              height: 12,
            ),
            Container(
              width: 353,
              height: 90,
              padding: EdgeInsets.fromLTRB(21, 16, 21, 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffFFFFFF)),
              child: Row(
                children: [
                  Image.asset('assets/images/profile2.png',
                      height: 58, width: 58),
                  SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("[총학생회 다온] 총학생회비",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0xff000000))),
                      SizedBox(height: 8),
                      Text("운영자 김민지",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Color(0xff9E9E9E))),
                    ],
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset("assets/images/arrow.png",
                            width: 8, height: 16)
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              width: 353,
              height: 90,
              padding: EdgeInsets.fromLTRB(21, 16, 21, 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffFFFFFF)),
              child: Row(
                children: [
                  Image.asset('assets/images/profile3.png',
                      height: 58, width: 58),
                  SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("[중앙동아리] 리듬스타 회비",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0xff000000))),
                      SizedBox(height: 8),
                      Text("운영자 팜하니",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Color(0xff9E9E9E))),
                    ],
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset("assets/images/arrow.png",
                            width: 8, height: 16)
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              width: 353,
              height: 72,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xffFFFFFF)),
              child: Center(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset('assets/images/homme.png', width: 48, height: 48),
                  SizedBox(
                    width: 23,
                  ),
                  Image.asset('assets/images/Discover.png',
                      width: 48, height: 48),
                  SizedBox(
                    width: 23,
                  ),
                  Image.asset('assets/images/Inbox.png', width: 48, height: 48),
                  SizedBox(
                    width: 23,
                  ),
                  Image.asset('assets/images/Profile.png',
                      width: 48, height: 48),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MarketPage extends StatefulWidget {
  const MarketPage({Key? key}) : super(key: key);

  @override
  State<MarketPage> createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  final List<Widget> _widgetOptions = <Widget>[
    PollEndedPage(),
    PollContinuePage(),
    TransactionPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // 메인 위젯
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.text_snippet),
            label: 'Poll Ended',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Poll Continue',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Transactions',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightGreen,
        onTap: _onItemTapped,
      ),
    );
  }

  @override
  void initState() {
    //해당 클래스가 호출되었을떄
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
