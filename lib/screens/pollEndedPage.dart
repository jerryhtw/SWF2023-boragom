import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PollEndedPage extends StatefulWidget {
  const PollEndedPage({super.key});

  @override
  State<PollEndedPage> createState() => _PollEndedPageState();
}

class _PollEndedPageState extends State<PollEndedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("PollEndedPage")),
    );
  }
}
