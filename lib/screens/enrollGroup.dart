import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:labor/screens/enrollPayment.dart';

class EnrollGroup extends StatefulWidget {
  EnrollGroup({super.key});
  var bool_state = false;

  @override
  State<EnrollGroup> createState() => _EnrollGroupState();
}

class _EnrollGroupState extends State<EnrollGroup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Center(
        child: Container(
            width: 390,
            height: 700,
            padding: EdgeInsets.fromLTRB(20, 5, 20, 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/left_arrow.png',
                    width: 19, height: 24),
                SizedBox(height: 31),
                Text("어느그룹에 보낼까요?",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xff000000))),
                SizedBox(height: 31),
                Row(
                  children: [
                    Text("그룹명 선택",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xff9E9E9E))),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              showModalBottomSheet<void>(
                                  context: context,
                                  shape: const RoundedRectangleBorder(
                                    // <-- SEE HERE
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(15.0),
                                    ),
                                  ),
                                  builder: (BuildContext context) {
                                    return Container(
                                        padding:
                                            EdgeInsets.fromLTRB(24, 16, 24, 16),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Colors.white),
                                        height: 386,
                                        child: Center(
                                          child: Column(
                                            children: <Widget>[
                                              Row(
                                                children: [
                                                  Text(
                                                    "송금그룹 선택",
                                                    style:
                                                        TextStyle(fontSize: 16),
                                                  ),
                                                  Expanded(
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          InkWell(
                                                              child: Icon(
                                                                  Icons.close),
                                                              onTap: () {
                                                                Navigator.pop(
                                                                    context);
                                                              })
                                                        ]),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 20),
                                              Row(
                                                children: [
                                                  Image.asset(
                                                      'assets/images/ellipse.png',
                                                      height: 58,
                                                      width: 58),
                                                  SizedBox(width: 8),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      InkWell(
                                                        onTap: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          EnrollPayment()));
                                                        },
                                                        child: Text(
                                                            "[디자인학과]학생회비",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 16,
                                                                color: Color(
                                                                    0xff000000))),
                                                      ),
                                                      SizedBox(height: 8),
                                                      Text("운영자 강해린",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 12,
                                                              color: Color(
                                                                  0xff9E9E9E))),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 20),
                                              Row(
                                                children: [
                                                  Image.asset(
                                                      'assets/images/ellipse.png',
                                                      height: 58,
                                                      width: 58),
                                                  SizedBox(width: 8),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text("[총학생회 다온] 총학생회비",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 16,
                                                              color: Color(
                                                                  0xff000000))),
                                                      SizedBox(height: 8),
                                                      Text("운영자 김민지",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 12,
                                                              color: Color(
                                                                  0xff9E9E9E))),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 20),
                                              Row(
                                                children: [
                                                  Image.asset(
                                                      'assets/images/ellipse.png',
                                                      height: 58,
                                                      width: 58),
                                                  SizedBox(width: 8),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text("[중앙동아리] 리듬스타 회비",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 16,
                                                              color: Color(
                                                                  0xff000000))),
                                                      SizedBox(height: 8),
                                                      Text("운영자 팜하니",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 12,
                                                              color: Color(
                                                                  0xff9E9E9E))),
                                                    ],
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ));
                                  });
                            },
                            child: Image.asset('assets/images/down_arrow.png',
                                width: 12, height: 6),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 12),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Color(0xffD9D9D9),
                )
              ],
            )),
      ),
    );
  }
}
