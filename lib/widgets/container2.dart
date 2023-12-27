import 'package:flutter/material.dart';

class Container2 extends StatelessWidget {
  const Container2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final phoneWidth = MediaQuery.of(context).size.width;
    final phoneHeight = MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity,
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
      child: Padding(
        padding: EdgeInsets.all(phoneWidth / 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sınavlarım",
              style: TextStyle(
                  fontSize: phoneWidth / 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Raleway"),
            ),
            SizedBox(
              height: phoneHeight / 60,
            ),
            Container(
              width: phoneWidth / 3,
              height: phoneHeight / 4.2,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    blurRadius: 29.0,
                    offset: Offset(0, 1),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(phoneHeight / 55),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Herkes için Kodlama 1B Değerlendirme Sınavı",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontFamily: "Raleway"),
                    ),
                    SizedBox(
                      height: phoneHeight / 80,
                    ),
                    Text(
                      "Herkes İçin Kodlama - 1B",
                      style: TextStyle(
                          fontFamily: "Raleway", fontSize: phoneWidth / 32),
                    ),
                    SizedBox(
                      height: phoneHeight / 80,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.access_alarm,
                            color: Color.fromRGBO(136, 80, 196, 10)),
                        SizedBox(
                          width: phoneWidth / 65,
                        ),
                        const Text("45 Dakika")
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
