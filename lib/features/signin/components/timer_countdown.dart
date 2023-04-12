import 'dart:async';
import 'package:flutter/material.dart';
import 'subtitle.dart';

class TimerCountDown extends StatefulWidget {
  const TimerCountDown({super.key});

  @override
  State<TimerCountDown> createState() => _TimerContDownState();
}

class _TimerContDownState extends State<TimerCountDown> {
  int _counter = 30;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SubTitle(
      text: '$_counter seconds',
    );
  }
}
