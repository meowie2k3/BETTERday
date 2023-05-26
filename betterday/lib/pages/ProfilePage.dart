import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  getUserId() {
    return FirebaseAuth.instance.currentUser!.uid;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: emotionalChart(),
      ),
    );
  }

  emotionalChart(){
    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(getUserId()).get(),
      builder: (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text("Something went wrong");
        }
        if (snapshot.hasData && !snapshot.data!.exists) {
          return const Text("Document does not exist");
        }
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
          _emotionData = data['emotionRecord'].cast<int>();
          return SfCartesianChart(
            margin: EdgeInsets.all(0),
            borderWidth: 0,
            borderColor: Colors.transparent,
            primaryYAxis: NumericAxis(
              minimum: 0,
              maximum: 6,
              //isVisible: false,
              interval: 1,
              
            ),
            primaryXAxis: NumericAxis(
              minimum: 1,
              //max should be the length of the emotion record
              maximum: _emotionData.length.toDouble(),
              //isVisible: false,
              interval: 1,
            ),
            
          );
        }
        return const Text("loading");
      }
    );
  }
}