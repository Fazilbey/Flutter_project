import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            ]));
  }
}