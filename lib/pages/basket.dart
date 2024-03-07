import 'package:flutter/material.dart';
import 'package:kocapeynir_project/pages/footer.dart';
import 'package:kocapeynir_project/pages/header.dart';

class BasketPage extends StatefulWidget {
  const BasketPage({super.key});

  @override
  State<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [Header(), Footer()],
      ),
    );
  }
}
