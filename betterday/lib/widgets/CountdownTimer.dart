import 'dart:async';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StopWatchWidget extends StatefulWidget {
  int timelimit;

  StopWatchWidget({Key? key, required this.timelimit}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _StopWatchWidgetState createState() => _StopWatchWidgetState();

  String getTime() {
    return _StopWatchWidgetState().getTime();
  }

  void addTimeLimit() {
    timelimit += 5;
  }
}

class _StopWatchWidgetState extends State<StopWatchWidget> {
  int _seconds = 0;
  int _minutes = 0;
  late Timer _timer;
  int _timelimit = 0;

  String getTime() {
    String timerOutput = _minutes.toString().padLeft(2, '0') +
        ':' +
        _seconds.toString().padLeft(2, '0');
    return timerOutput;
  }

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _seconds++;
        if (_seconds == 60) {
          _seconds = 0;
          _minutes++;
        }
      });
    });

    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _timelimit = widget.timelimit;
        if (_minutes == _timelimit) {
          // sử dụng _timelimit thay vì timelimit
          _timer.cancel();
          //return homescreen
          Navigator.pop(context);
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
    String timerOutput = _minutes.toString().padLeft(2, '0') +
        ':' +
        _seconds.toString().padLeft(2, '0');
    String limit = '/' + _timelimit.toString().padLeft(2, '0') + ':00';
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          timerOutput,
          style: const TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontFamily: 'Google Sans',
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          limit,
          style: const TextStyle(
            fontSize: 30,
            color: Colors.red,
            fontFamily: 'Google Sans',
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
