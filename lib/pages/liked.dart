import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kocapeynir_project/pages/footer.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      Container(
          // width: MediaQuery.of(context).size.width,
          child: Stack(children: [
        Image.asset(
          'assets/red_line_head.png',
          fit: BoxFit.fitHeight,
          height: 50,
        ),
        const Positioned.fill(
            child: Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      // onTap: () {
                      //   launchUrlString(
                      //       'https://www.kocabaspeynir.com/magaza/#');
                      // },
                      child: Icon(
                        FontAwesomeIcons.facebookSquare,
                        size: 16,
                      ),
                    ),
                    SizedBox(width: 8),
                    InkWell(
                      // onTap: () {
                      //   launchUrlString(
                      //       'https://www.instagram.com/kocabaspeynir/');
                      // },
                      child: Icon(
                        FontAwesomeIcons.instagram,
                        size: 16,
                      ),
                    ),
                  ],
                )))
      ])),
      Container(
        // width: double.infinity,
        height: 270,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/wild.jpg"), fit: BoxFit.fitHeight)),

        child: Container(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " Favori Listem",
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
                    "ANASAYFA / FAVORI LISTEM",
                    style: TextStyle(fontFamily: 'BenchNine', fontSize: 24),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      Container(
        //

        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background-paper.jpg'),
                fit: BoxFit.fitHeight)),
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.heart_broken_sharp,
                      size: 86,
                    ),
                  ],
                ),
              ),
              Text(
                'Favori listesi boş',
                style: TextStyle(fontSize: 24, fontFamily: "BenchNine"),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "Favori listenizde henüz ürün yok. Mağaza sayfamıza giderek ürünlerimizi inceleyebilirsiniz.",
                  style: TextStyle(fontSize: 24, fontFamily: "BenchNine"),
                  overflow: TextOverflow.clip,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Mağaza dön",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "BenchNine",
                      fontSize: 18),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFFDD0000)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            side: BorderSide(
                      color: Colors.red,
                      // width: double.infinity
                    )))),
              ),
            ],
          ),
        ),
      ),
      Footer()
    ]));
  }
}
