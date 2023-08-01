import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PollContinuePage extends StatefulWidget {
  const PollContinuePage({super.key});

  @override
  State<PollContinuePage> createState() => _PollContinuePageState();
}

class _PollContinuePageState extends State<PollContinuePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("PollContinuePage")),
    );
  }
}
