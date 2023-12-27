import 'package:application/widgets/container1.dart';
import 'package:application/widgets/container2.dart';
import 'package:application/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

class PlatformPage extends StatefulWidget {
  const PlatformPage({Key? key}) : super(key: key);

  @override
  _PlatformPageState createState() => _PlatformPageState();
}

class _PlatformPageState extends State<PlatformPage> {
  @override
  Widget build(BuildContext context) {
    final phoneWidth = MediaQuery.of(context).size.width;
    final phoneHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: AspectRatio(
          aspectRatio: 8 / 1,
          child: Image.asset(
            "lib/assets/tobeto.png",
            alignment: Alignment.centerLeft,
          ),
        ),
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Divider(color: Color.fromARGB(91, 200, 200, 200)),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "TOBETO",
                    style: TextStyle(
                        color: Color.fromRGBO(136, 80, 196, 10),
                        fontSize: 27,
                        fontWeight: FontWeight.w900,
                        fontFamily: "Raleway"),
                  ),
                  Text(
                    "'ya hoş geldin",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: "Raleway",
                    ),
                  ),
                ],
              ),
              Text(
                "Pair-1",
                style: TextStyle(fontSize: 25, fontFamily: "Raleway"),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Yeni nesil öğrenme deneyimi ile Tobeto kariyer yolculuğunda senin yanında!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Raleway",
                      fontWeight: FontWeight.w600,
                      fontSize: 17),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container1(),
              SizedBox(
                height: 20,
              ),
              Container2(),
              SizedBox(
                height: phoneHeight / 50,
              ),
              Container(
                width: phoneWidth / 1.2,
                height: phoneHeight / 5.5,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: [0.1, 1.0],
                    colors: [
                      Color(0xFF1D0B8C),
                      Color(0xFFBDA6FE),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.13),
                      blurRadius: 29.0,
                      offset: Offset(0, 1),
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(35),
                      topRight: Radius.circular(35),
                      bottomLeft: Radius.circular(35)),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: phoneHeight / 25,
                    ),
                    Text(
                      "Profilini Oluştur",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: phoneHeight / 40),
                    ),
                    SizedBox(
                      height: phoneHeight / 40,
                    ),
                    SizedBox(
                      width: phoneWidth / 1.4,
                      height: phoneHeight / 22,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Color.fromRGBO(136, 80, 196, 10),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Başla",
                          )),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: phoneHeight / 50,
              ),
              Container(
                width: phoneWidth / 1.2,
                height: phoneHeight / 5.5,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: [0.1, 1.0],
                    colors: [
                      Color(0xFF0E0B93),
                      Color(0xFF5EB6CA),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.13),
                      blurRadius: 29.0,
                      offset: Offset(0, 1),
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(35),
                      topRight: Radius.circular(35),
                      bottomLeft: Radius.circular(35)),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: phoneHeight / 25,
                    ),
                    Text(
                      "Kendini Değerlendir",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: phoneHeight / 40),
                    ),
                    SizedBox(
                      height: phoneHeight / 40,
                    ),
                    SizedBox(
                      width: phoneWidth / 1.4,
                      height: phoneHeight / 22,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Color.fromRGBO(136, 80, 196, 10),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Başla",
                          )),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: phoneHeight / 50,
              ),
              Container(
                width: phoneWidth / 1.2,
                height: phoneHeight / 5.5,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: [0.1, 1.0],
                    colors: [
                      Color(0xFF3C0B8C),
                      Color(0xFFE3A6FE),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.13),
                      blurRadius: 29.0,
                      offset: Offset(0, 1),
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(35),
                      topRight: Radius.circular(35),
                      bottomLeft: Radius.circular(35)),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: phoneHeight / 25,
                    ),
                    Text(
                      "Öğrenmeye Başla",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: phoneHeight / 40),
                    ),
                    SizedBox(
                      height: phoneHeight / 40,
                    ),
                    SizedBox(
                      width: phoneWidth / 1.4,
                      height: phoneHeight / 22,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Color.fromRGBO(136, 80, 196, 10),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Başla",
                          )),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: phoneHeight / 20,
              ),
              Container(
                width: double.infinity,
                height: phoneHeight / 5,
                decoration: BoxDecoration(color: Color(0xFF9933FF)),
                child: Column(children: [
                  SizedBox(
                    height: phoneHeight / 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          width: phoneWidth / 4,
                          child: Image.asset("lib/assets/tb.png")),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              textStyle:
                                  TextStyle(fontWeight: FontWeight.bold)),
                          onPressed: () {},
                          child: Text("Bize Ulaşın")),
                    ],
                  ),
                  SizedBox(
                    height: phoneHeight / 40,
                  ),
                  const Text(
                    "© 2022 Tobeto",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.bold),
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
