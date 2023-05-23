import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class ProfilePage extends StatefulWidget {
  String username;
  String email;
  ProfilePage({ 
    Key? key, 
    required this.email, 
    required this.username 
    }) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<int> _emotionData = [];

  @override
  void initState(){
    super.initState();
    _emotionData = [0, 0, 0, 0, 0, 0, 0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SfCartesianChart(),
      ),
    );
  }
}