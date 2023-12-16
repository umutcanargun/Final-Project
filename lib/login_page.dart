import 'package:application/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

class TobetoLoginPage extends StatefulWidget {
  const TobetoLoginPage({Key? key}) : super(key: key);

  @override
  _TobetoLoginPageState createState() => _TobetoLoginPageState();
}

class _TobetoLoginPageState extends State<TobetoLoginPage> {
  bool passenable = true;
  TextEditingController _passwordController = TextEditingController();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
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
                Image.asset(
                  "lib/assets/tobeto.png",
                  width: 150,
                ),
                const Spacer(),
                SizedBox(
                  width: 250,
                  height: 40,
                  child: TextField(
                    style: const TextStyle(fontSize: 13),
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Kullanıcı Kodu',
                      labelStyle: const TextStyle(
                          color: Color.fromARGB(190, 136, 136, 136),
                          fontFamily: "Raleway"),
                      contentPadding: const EdgeInsets.only(left: 10),
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
                SizedBox(
                  width: 250,
                  height: 40,
                  child: TextField(
                    controller: _passwordController,
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      labelText: 'Parola',
                      labelStyle: const TextStyle(
                          color: Color.fromARGB(190, 136, 136, 136),
                          fontFamily: "Raleway"),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(107, 159, 159, 159)),
                          borderRadius: BorderRadius.circular(7)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color.fromARGB(107, 159, 159, 159),
                          ),
                          borderRadius: BorderRadius.circular(7)),
                      suffixIcon: IconButton(
                        icon: Icon(_isObscure
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          // Parola gizliliğini değiştir
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      ),
                    ),
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
                      style:
                          TextStyle(color: Colors.blue, fontFamily: 'Raleway'),
                    ))
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
