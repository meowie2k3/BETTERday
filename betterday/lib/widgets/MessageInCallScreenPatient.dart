import 'dart:async';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextContainer extends StatefulWidget {
  final List<String> displayText;
  int i = 0;

  TextContainer({Key? key, required this.displayText}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TextContainerState createState() => _TextContainerState();
}

class _TextContainerState extends State<TextContainer> {
  // ignore: non_constant_identifier_names
  final List<String> _textList = ['Xin chào!'];

  late Timer _timer;

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(const Duration(seconds: 13), (timer) {
      setState(() {
        _textList.add(widget.displayText[widget.i]);
      });
      widget.i++;
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> rows = [];

    for (int i = 0; i < _textList.length; i++) {
      rows.add(
        Row(
          children: <Widget>[
            Container(
              width: 50,
              height: 50,
              margin:
                  const EdgeInsetsDirectional.only(end: 10, top: 90, bottom: 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Transform.translate(
                offset: const Offset(0, 0),
                child: GestureDetector(
                  //onTap: () {},
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Opacity(
                        opacity: 0.8,
                        child: Image.asset(
                          'assets/images/HomeScreen/ChuyenGiaNoiBat/pexels-guilherme-almeida-1858175.jpg',
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                      )),
                ),
              ),
            ),
            Stack(
              children: <Widget>[
                const Image(
                    width: 300,
                    image: AssetImage(
                        'assets/images/CallScreenPatient/chatBox.png')),
                const Positioned(
                  top: 5,
                  left: 15,
                  child: Text(
                    'Ms. Trang',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  top: 5,
                  right: 15,
                  child: Text(
                    '00:' + (i * 13).toString().padLeft(2, '0'),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 15,
                  child: SizedBox(
                    width: 280, // Giá trị này cần điều chỉnh phù hợp với ảnh
                    child: Text(
                      _textList[i],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.normal,
                      ),
                      overflow:
                          TextOverflow.visible, // Thuộc tính mặc định là 'clip'
                      textAlign: TextAlign
                          .left, // Thiết lập cho text đổ từ trái sang phải
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      width: 360,
      height: 370,
      child: Transform.translate(
        offset: const Offset(0, 0),
        child: GestureDetector(
          //onTap: () {},
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              children: rows,
            ),
          ),
        ),
      ),
    );
  }
}
