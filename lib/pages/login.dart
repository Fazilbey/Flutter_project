import 'package:flutter/material.dart';
import 'package:kocapeynir_project/pages/footer.dart';
import 'package:kocapeynir_project/pages/header.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Header(),
                Container(
                  // width: double.infinity,
                  height: 270,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/wild.jpg"),
                          fit: BoxFit.fitHeight)),

                  child: Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Hesabim",
                              style: TextStyle(
                                fontFamily: "BenchNine",
                                fontWeight: FontWeight.bold,
                                fontSize: 36,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "ANASAYFA / HEASABIM",
                              style: TextStyle(
                                  fontFamily: 'BenchNine', fontSize: 24),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  // 


                  
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/background-paper.jpg'),
                          fit: BoxFit.fitHeight)),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    height: 850,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "GİRİŞ YAP",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "BenchNine",
                                    fontSize: 22),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(20, 0, 20, 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Kullanıcı adı veya e-posta adresi ",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "BenchNine",
                                          fontSize: 14,
                                        )),
                                  ],
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.red, width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 2),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Parola",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "BenchNine",
                                        fontSize: 14,
                                      )),
                                ],
                              ),
                            ),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.red, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: Colors.black,
                          height: 42,
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Oturum aç",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "BenchNine",
                                  fontSize: 18),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color(0xFFDD0000)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        side: BorderSide(
                                  color: Colors.red,
                                  // width: double.infinity
                                )))),
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      child: Row(
                                    children: [
                                      Checkbox(
                                          value: false,
                                          onChanged: ((value) => {})),
                                      Text("Beni Hatırla",
                                          style: TextStyle(
                                              fontFamily: "BenchNine",
                                              fontSize: 14)),
                                    ],
                                  )),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                      'Şifreni mi unuttun?',
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 14),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.all(30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('VEYA',
                                        style: TextStyle(
                                            fontFamily: "BenchNine",
                                            fontSize: 26))
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('KAYIT OL',
                                        style: TextStyle(
                                            fontFamily: "BenchNine",
                                            fontSize: 22))
                                  ],
                                ),
                              ),
                              Container(
                                // padding: new EdgeInsets.only(right: 13.0),
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                child: Text(
                                  'Bu siteye kaydolmak, sipariş durumunuza ve geçmişinize erişmenizi sağlar.Asağıdaki alanları doldurmanız yeterli, kısa sürede sizin icin yeni bir hesapoluşturacağız. Sizden yalnızca satın alma sürecini daha hızlı ve daha kolay halegetirmek için gerekli bilgileri isteyeceğiz.',
                                  style: TextStyle(
                                      fontFamily: "BenchNine", fontSize: 22),
                                  overflow: TextOverflow.clip,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "Oturum aç",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "BenchNine",
                                      fontSize: 18),
                                ),
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Color(0xFFDD0000)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            side: BorderSide(
                                      color: Colors.red,
                                      // width: double.infinity
                                    )))),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Footer()
          ],
        ),
      ),
    );
  }
}
