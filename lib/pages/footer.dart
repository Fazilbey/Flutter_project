import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //footer footer foooter
          height: 2180,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/footerback.png'),
                  fit: BoxFit.fitHeight)),
          child: Column(
            children: [
              Container(
                height: 218,
                margin: EdgeInsets.fromLTRB(0, 30, 0, 30),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage('assets/siksut.png'))),
                // color: Colors.red,
              ),
              Container(
                height: 131,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 35),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage('assets/contacts.png'))),
                // color: Colors.red,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                height: 248,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Şık Süt Blog",
                          style: TextStyle(
                              fontFamily: "BenchNine",
                              fontSize: 24,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            // margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                            height: 60,
                            width: 60,

                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fitHeight,
                                    image: AssetImage("assets/peynir.jpeg"))),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            // color: Colors.red,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Her yaşa uygun lezzet: Peynir",
                                  style: TextStyle(
                                      fontFamily: "BenchNine",
                                      fontSize: 30,
                                      color: Colors.grey),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "23 Ocak 2023",
                                      style: TextStyle(
                                          fontFamily: "BenchNine",
                                          fontSize: 12,
                                          color: Colors.grey),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "Yorum yok",
                                      style: TextStyle(
                                          fontFamily: "BenchNine",
                                          fontSize: 12,
                                          color: Colors.grey),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                        // color: Colors.blue,
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              // margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                              height: 60,
                              width: 60,

                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fitHeight,
                                      image: AssetImage("assets/peynir2.jpg"))),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              // color: Colors.red,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Şık Süt WorldFood 2022’de",
                                    style: TextStyle(
                                        fontFamily: "BenchNine",
                                        fontSize: 30,
                                        color: Colors.grey),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "23 Ocak 2023",
                                        style: TextStyle(
                                            fontFamily: "BenchNine",
                                            fontSize: 12,
                                            color: Colors.grey),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "Yorum yok",
                                        style: TextStyle(
                                            fontFamily: "BenchNine",
                                            fontSize: 12,
                                            color: Colors.grey),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
                width: double.infinity,
                height: 330,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Text(
                        "Müşteri Hizmetleri",
                        style: TextStyle(
                            fontFamily: "BenchNine",
                            fontSize: 24,
                            color: Colors.white),
                      ),
                    ),
                    Text(
                      "Mesafeli Satış Sözleşmesi",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "BenchNine",
                          fontSize: 24),
                    ),
                    Text(
                      "KVKK Aydınlatma Metni",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "BenchNine",
                          fontSize: 24),
                    ),
                    Text(
                      "Kargo ve Teslimat",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "BenchNine",
                          fontSize: 24),
                    ),
                    Text(
                      "Gizlilik Politikası",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "BenchNine",
                          fontSize: 24),
                    ),
                    Text(
                      "Ödeme Koşulları",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "BenchNine",
                          fontSize: 24),
                    ),
                    Text(
                      "Sıkça Sorulan Sorular",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "BenchNine",
                          fontSize: 24),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
                width: double.infinity,
                height: 330,
                // color: Colors.red,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Text(
                        "Ürünlerimiz",
                        style: TextStyle(
                            fontFamily: "BenchNine",
                            fontSize: 24,
                            color: Colors.white),
                      ),
                    ),
                    Text(
                      "Süt Ürünleri",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "BenchNine",
                          fontSize: 24),
                    ),
                    Text(
                      "Zeytin Ürünleri",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "BenchNine",
                          fontSize: 24),
                    ),
                    Text(
                      "Sos ve Salçalar",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "BenchNine",
                          fontSize: 24),
                    ),
                    Text(
                      "Bal ve Reçeller",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "BenchNine",
                          fontSize: 24),
                    ),
                    Text(
                      "Ev Yapımı ve Yöresel",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "BenchNine",
                          fontSize: 24),
                    ),
                    Text(
                      "Sabun ve Kozmetik",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "BenchNine",
                          fontSize: 24),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
                width: double.infinity,
                height: 330,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Text(
                        "Müşteri Hizmetleri",
                        style: TextStyle(
                            fontFamily: "BenchNine",
                            fontSize: 24,
                            color: Colors.white),
                      ),
                    ),
                    Text(
                      "Mesafeli Satış Sözleşmesi",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "BenchNine",
                          fontSize: 24),
                    ),
                    Text(
                      "KVKK Aydınlatma Metni",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "BenchNine",
                          fontSize: 24),
                    ),
                    Text(
                      "Kargo ve Teslimat",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "BenchNine",
                          fontSize: 24),
                    ),
                    Text(
                      "Gizlilik Politikası",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "BenchNine",
                          fontSize: 24),
                    ),
                    Text(
                      "Ödeme Koşulları",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "BenchNine",
                          fontSize: 24),
                    ),
                    Text(
                      "Sıkça Sorulan Sorular",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "BenchNine",
                          fontSize: 24),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
                width: double.infinity,
                height: 410,
                // color: Colors.red,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Text(
                        "Şık Süt",
                        style: TextStyle(
                            fontFamily: "BenchNine",
                            fontSize: 24,
                            color: Colors.white),
                      ),
                    ),
                    Text(
                      "Kurumsal",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "BenchNine",
                          fontSize: 24),
                    ),
                    Text(
                      "Hakkımızda",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "BenchNine",
                          fontSize: 24),
                    ),
                    Text(
                      "Sertifikalar",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "BenchNine",
                          fontSize: 24),
                    ),
                    Text(
                      "İletişim",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "BenchNine",
                          fontSize: 24),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                      child: Text(
                        "Satış Mağazaları",
                        style: TextStyle(
                            color: Colors.grey,
                            fontFamily: "BenchNine",
                            fontSize: 24),
                      ),
                    ),
                    Container(
                      height: 139,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/qr.png'),
                              alignment: Alignment.topLeft)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/footerback.png"), fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: 100,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18, // Adjust the font size as needed
                              ),
                              children: [
                                TextSpan(
                                  text: '2020',
                                ),
                                WidgetSpan(
                                  child: Icon(
                                    Icons.copyright,
                                    size: 18,
                                    color: Colors
                                        .white, // Adjust the icon size as needed
                                  ),
                                ),
                                TextSpan(
                                  text: 'Şık Süt Online Satış Platformu. ',
                                ),
                                WidgetSpan(
                                  child: Image.asset(
                                    'assets/renklamlogo.png', // Adjust the path to your image
                                    // height:
                                    //     24, // Adjust the image height as needed
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: 46,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/card_options.png"))),
                      ),
                    ],
                  ))
            ],
          ),
        )
      ],
    );
  }
}
