import 'package:flutter/material.dart';
import 'package:mult_app/COMOM/bottomBar.dart';
import '../COMOM/cores.dart';

class CepPage extends StatefulWidget {
  const CepPage({super.key});

  @override
  State<CepPage> createState() => _CepPageState();
}

class _CepPageState extends State<CepPage> {
  // List<Widget> lista = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cores.cor1,
      
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}