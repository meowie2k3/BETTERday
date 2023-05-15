import 'dart:async';

import 'package:flutter/material.dart';

class StopWatchWidget extends StatefulWidget {
  final int timelimit;

  const StopWatchWidget({Key? key, required this.timelimit}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _StopWatchWidgetState createState() => _StopWatchWidgetState();
}

class _StopWatchWidgetState extends State<StopWatchWidget> {
  int _seconds = 0;
  int _minutes = 0;
  late Timer _timer;
  late int _timelimit;

  @override
  void initState() {
    super.initState();
    _timelimit = widget.timelimit;

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _seconds++;
        if (_seconds == 60) {
          _seconds = 0;
          _minutes++;
        }
      });
    });

    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_minutes == _timelimit) {
          // sử dụng _timelimit thay vì timelimit
          _timer.cancel();
          //return homescreen
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
