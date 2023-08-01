import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'enrollPayment2.dart';

class EnrollPayment extends StatefulWidget {
  const EnrollPayment({super.key});

  @override
  State<EnrollPayment> createState() => _EnrollPaymentState();
}

class _EnrollPaymentState extends State<EnrollPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      Text("어느그룹에 보낼까요?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color(0xff000000))),
                      SizedBox(height: 31),
                      Row(
                        children: [
                          Text(
                            "[디자인학과]학생회비",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Expanded(
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset('assets/images/down_arrow.png',
                                      width: 12, height: 6),
                                ]),
                          )
                        ],
                      ),
                      SizedBox(height: 12),
                      Container(
                        height: 1,
                        width: double.infinity,
                        color: Color(0xffD9D9D9),
                      ),
                      SizedBox(height: 450),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EnrollPayment2()));
                        },
                        child: Container(
                          height: 52,
                          width: 353,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff0671E6)),
                          child: Center(
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
