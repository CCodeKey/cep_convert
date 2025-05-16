import 'package:flutter/material.dart';
import 'package:mult_app/COMOM/bottomBar.dart';
import 'package:mult_app/COMOM/cores.dart';

class MoneyConvertPage extends StatefulWidget {
  const MoneyConvertPage({super.key});

  @override
  State<MoneyConvertPage> createState() => _MoneyConvertPageState();
}

class _MoneyConvertPageState extends State<MoneyConvertPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cores.cor3,

      bottomNavigationBar: CustomBottomBar(),
    );
  }
}