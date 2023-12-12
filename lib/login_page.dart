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
      backgroundColor: Color.fromARGB(255, 166, 166, 166),
      body: Center(
        child: Container(
          width: 350,
          height: 350,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40), color: Colors.white),
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              const Spacer(),
              Text(
                'Tobeto',
                style: TextStyle(
                    color: Colors.black, fontSize: 25, fontFamily: 'Raleway'),
              ),
              const Spacer(),
              SizedBox(
                height: 60,
                child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35)),
                        labelText: 'Kullanıcı Kodu')),
              ),
              const Spacer(),
              SizedBox(
                height: 60,
                child: TextField(
                  obscureText: passenable,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35)),
                      labelText: 'Parola',
                      suffix: IconButton(
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
              const Spacer(),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                      backgroundColor: Colors.deepPurple),
                  onPressed: () {},
                  child: const Text(
                    'Giriş Yap',
                    style:
                        TextStyle(color: Colors.white, fontFamily: 'Raleway'),
                  )),
              const Spacer(),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                      backgroundColor: Colors.deepPurple),
                  onPressed: () {},
                  child: const Text(
                    'Parolamı Unuttum',
                    style:
                        TextStyle(color: Colors.white, fontFamily: 'Raleway'),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
