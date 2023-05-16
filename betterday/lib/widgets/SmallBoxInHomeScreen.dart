import 'package:flutter/material.dart';

class SmallBoxInHomeScreen extends StatelessWidget {
  final String imageLink;
  final String name;
  final bool isFavorite;
  final double numStar;
  final String cost;

  const SmallBoxInHomeScreen(
      {Key? key,
      required this.imageLink,
      required this.name,
      required this.isFavorite,
      required this.numStar,
      required this.cost})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      width: 96,
      height: 130,
      child: Transform.translate(
        offset: const Offset(0, 0),
        child: GestureDetector(
          //onTap: () {},
          child: Column(
            children: <Widget>[
              const SizedBox(height: 5),
              Row(
                children: <Widget>[
                  const SizedBox(width: 10),
                  isFavorite
                      ? const Icon(
                          Icons.favorite,
                          color: Color.fromARGB(255, 255, 0, 0),
                          size: 10,
                        )
                      : const Icon(
                          Icons.favorite,
                          color: Color(0xFF959595),
                          size: 10,
                        ),
                  const SizedBox(width: 40),
                  const Icon(
                    Icons.star,
                    color: Color(0xFFFEAF20),
                    size: 12,
                  ),
                  Text(
                    numStar.toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 10,
                      fontFamily: 'Google Sans',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  imageLink,
                  width: 55,
                  height: 55,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 12,
                  fontFamily: 'Google Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                cost,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xFF677294),
                  fontSize: 9,
                  fontFamily: 'Google Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
