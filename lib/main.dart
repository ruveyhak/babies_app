import 'package:final_project/ana_sayfa.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AnaUygulama());
}

class AnaUygulama extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(home: AnaSayfa()
    );

  }
}
