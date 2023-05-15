import 'package:flutter/material.dart';

class BigBoxInHomeScreen extends StatelessWidget {
  final String imageLink;
  final String name;
  final int numStar;

  const BigBoxInHomeScreen(
      {Key? key,
      required this.imageLink,
      required this.name,
      required this.numStar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      width: 190,
      height: 245,
      child: Transform.translate(
        offset: const Offset(0, 0),
        child: GestureDetector(
          //onTap: () {},
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  imageLink,
                  width: 190,
                  height: 175,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20,
                      fontFamily: 'Google Sans',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(width: 5),
                  const CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 5,
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 10,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  for (int i = 0; i < numStar; i++)
                    const Icon(
                      Icons.star,
                      color: Color(0xFFFEAF20),
                      size: 20,
                    ),
                  for (int i = 0; i < 5 - numStar; i++)
                    const Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 149, 149, 149),
                      size: 20,
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
