import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CourseBox extends StatelessWidget {
  final String imageLink;
  final String name;
  final String details;
  final String discountCost;
  final String realCost;
  final String url;

  const CourseBox(
      {Key? key,
      required this.imageLink,
      required this.name,
      required this.details,
      required this.discountCost,
      required this.realCost,
      required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // ignore: deprecated_member_use
      onTap: () => launch(url),
      child: Container(
        margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Transform.translate(
          offset: const Offset(0, 0),
          child: GestureDetector(
            //onTap: () {},
            child: Column(
              children: <Widget>[
                //title
                const SizedBox(height: 15),
                Row(
                  children: <Widget>[
                    const SizedBox(width: 15),
                    Text(
                      name,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 18,
                        fontFamily: 'Google Sans',
                        fontWeight: FontWeight.w500,
                        //fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),

                //description
                const SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    const SizedBox(width: 15),
                    Text(
                      details,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        color: Color(0xFF677294),
                        fontSize: 14,
                        fontFamily: 'Google Sans',
                        fontWeight: FontWeight.w500,
                        //fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),

                //image
                const SizedBox(height: 15),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imageLink,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),

                //cost
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(width: 15),
                    Expanded(
                      flex: 1,
                      child: Text(
                        discountCost,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 18,
                          fontFamily: 'Google Sans',
                          fontWeight: FontWeight.w500,
                          //fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        realCost,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          color: Color(0xFF677294),
                          fontSize: 16,
                          fontFamily: 'Google Sans',
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.lineThrough,
                          //fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    const Expanded(
                      flex: 1,
                      child: Text(
                        'ƯU ĐÃI CÓ HẠN!',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromARGB(255, 222, 12, 12),
                          fontSize: 10,
                          fontFamily: 'Google Sans',
                          fontWeight: FontWeight.w500,
                          //fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),

                //2button
                const SizedBox(height: 15),
                Row(
                  children: <Widget>[
                    //button học thử
                    const SizedBox(width: 15),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                          color: const Color(0xFF0EBE7F),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 150,
                        height: 32,
                        child: Transform.translate(
                          offset: const Offset(0, 0),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Học thử miễn phí',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 15,
                                fontFamily: 'Google Sans',
                                fontWeight: FontWeight.w500,
                                //fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    //button mua ngay
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 60),
                        decoration: BoxDecoration(
                          color: const Color(0xFF0EBE7F),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 100,
                        height: 32,
                        child: Transform.translate(
                          offset: const Offset(0, 0),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Mua ngay',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 15,
                                fontFamily: 'Google Sans',
                                fontWeight: FontWeight.w500,
                                //fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 15),
                  ],
                ),

                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
