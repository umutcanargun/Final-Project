import 'package:flutter/material.dart';

class TobetoLoginPage extends StatefulWidget {
  const TobetoLoginPage({Key? key}) : super(key: key);

  @override
  _TobetoLoginPageState createState() => _TobetoLoginPageState();
}

class _TobetoLoginPageState extends State<TobetoLoginPage> {
  bool passenable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        Image.asset(
          'lib/assets/mor.jpg', // Kullanmak istediğiniz resmin yolu
          fit: BoxFit.cover,
        ),
        Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const Spacer(),
                const Text(
                  'Tobeto',
                  style: TextStyle(
                      color: Colors.black, fontSize: 25, fontFamily: 'Raleway'),
                ),
                const Spacer(),
                Container(
                  width: 250,
                  height: 40,
                  child: TextField(
                    style: TextStyle(fontSize: 13),
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Kullanıcı Kodu",
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(147, 94, 94, 94),
                      ),
                      contentPadding: EdgeInsets.only(left: 10),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(107, 159, 159, 159)),
                          borderRadius: BorderRadius.circular(7)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(107, 159, 159, 159)),
                          borderRadius: BorderRadius.circular(7)),
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  width: 250,
                  height: 40,
                  child: TextField(
                    style: TextStyle(fontSize: 13),
                    obscureText: passenable,
                    decoration: InputDecoration(
                        hintText: "Parola",
                        hintStyle: const TextStyle(
                          color: Color.fromARGB(147, 94, 94, 94),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromARGB(107, 159, 159, 159)),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromARGB(107, 159, 159, 159)),
                            borderRadius: BorderRadius.circular(7)),
                        // labelText: 'Parola',
                        suffix: IconButton(
                            padding: EdgeInsets.only(top: 0),
                            onPressed: () {
                              //add Icon button at end of TextField
                              setState(() {
                                //refresh UI
                                if (passenable) {
                                  //if passenable == true, make it false
                                  passenable = false;
                                } else {
                                  passenable =
                                      true; //if passenable == false, make it true
                                }
                              });
                            },
                            icon: Icon(passenable == true
                                ? Icons.remove_red_eye
                                : Icons.password))),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 250,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          textStyle: const TextStyle(fontSize: 15),
                          backgroundColor: Colors.deepPurple),
                      onPressed: () {},
                      child: const Text(
                        'GİRİŞ YAP',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'Raleway'),
                      )),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Parolamı Unuttum",
                      style: TextStyle(color: Colors.blue),
                    ))
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
