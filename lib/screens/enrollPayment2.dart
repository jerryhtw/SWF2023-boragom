import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:labor/screens/successPage.dart';

import '../functions/transferEther.dart';

class EnrollPayment2 extends StatefulWidget {
  EnrollPayment2({super.key});
  final TextEditingController _textController = new TextEditingController();

  @override
  State<EnrollPayment2> createState() => _EnrollPayment2State();
}

class _EnrollPayment2State extends State<EnrollPayment2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
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
                      Text("얼마를 송금할까요?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color(0xff000000))),
                      SizedBox(height: 31),
                      Row(
                        children: [
                          Flexible(
                            child: TextField(
                              controller:
                                  widget._textController, //text 가 입력될 때 마다 호출
                              decoration: InputDecoration(
                                  // labelText: '텍스트 입력',
                                  hintText: '입금 금액 입력',
                                  border: InputBorder.none //외곽선
                                  ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "원",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ]),
                          )
                        ],
                      ),
                      SizedBox(height: 11),
                      Container(
                        height: 1,
                        width: double.infinity,
                        color: Color(0xffD9D9D9),
                      ),
                      Text(
                        "기본 회비 금액 300,000원 이상 보내실 수 있어요.",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 410),
                      Container(
                        height: 52,
                        width: 353,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff0671E6)),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SuccessPage()));

                              transferEther(
                                  int.parse(widget._textController.text));
                            },
                            child: Text(
                              "다음",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    ]))));
  }
}
