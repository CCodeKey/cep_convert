import 'package:flutter/material.dart';
import 'package:mult_app/pages/cep.dart';
import 'package:mult_app/pages/convert.dart';
import 'cores.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => Custom_BottomBarState();
}

class Custom_BottomBarState extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Card(
        color: Cores.cor2,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            IconButton(onPressed: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => CepPage()));
              }, icon: Image.asset("assets/images/btn_local.png")),
            Container(
              height: 50,
              width: 1,
              color: Cores.cor3,
            ),
            IconButton(onPressed: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => MoneyConvertPage()));
            }, icon: Image.asset("assets/images/btn_convert.png"),),
          ],),
        ),
      ),

    );
  }
}