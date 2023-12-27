import 'package:application/widgets/tabs.dart';
import 'package:flutter/material.dart';

class Container1 extends StatefulWidget {
  const Container1({Key? key}) : super(key: key);

  @override
  _Container1State createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    final phoneWidth = MediaQuery.of(context).size.width;
    final phoneHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.13),
            blurRadius: 29.0,
            offset: Offset(0, 1),
          ),
        ],
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(children: [
        SizedBox(
          height: phoneHeight / 30,
        ),
        AspectRatio(
            aspectRatio: 10 / 2, child: Image.asset("lib/assets/ik.png")),
        SizedBox(
          height: phoneHeight / 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: phoneWidth / 4),
          child: Text(
            "Ücretsiz eğitimlerle, geleceğin mesleklerinde sen de yerini al.",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: phoneWidth / 25,
                fontFamily: "Raleway",
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: phoneHeight / 30,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Aradığın",
              style: TextStyle(
                  fontSize: phoneWidth / 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Raleway"),
            ),
            SizedBox(
              width: phoneWidth / 70,
            ),
            Text(
              "\"",
              style: TextStyle(
                  fontSize: phoneWidth / 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 24, 253, 127)),
            ),
            Text(
              "İş",
              style: TextStyle(
                  fontSize: phoneWidth / 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Raleway"),
            ),
            Text(
              "\"",
              style: TextStyle(
                  fontSize: phoneWidth / 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 24, 253, 127)),
            ),
          ],
        ),
        Text(
          "Burada!",
          style: TextStyle(
              fontSize: phoneWidth / 18,
              fontWeight: FontWeight.bold,
              fontFamily: "Raleway"),
        ),
        SizedBox(
          height: phoneHeight / 30,
        ),
        Tabs(),
      ]),
    );
  }
}
