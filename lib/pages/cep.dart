import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mult_app/COMOM/bottomBar.dart';
import '../COMOM/cores.dart';
import 'package:http/http.dart' as http;
// import 'dart:convert';

class CepPage extends StatefulWidget {
  const CepPage({super.key});

  @override
  State<CepPage> createState() => _CepPageState();
}

class _CepPageState extends State<CepPage> {
  TextEditingController _cepController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cores.cor1,

      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20,top: 30,right: 20, bottom: 30),
            child: TextField(
              controller: _cepController,
              keyboardType: TextInputType.numberWithOptions(),
              maxLength: 8,
              maxLengthEnforcement: MaxLengthEnforcement.enforced,
              
              decoration: InputDecoration(
                hintText: "digite seu cep",
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                )
              ),
            style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
            ),
            
          ),

          ElevatedButton(onPressed: (){
            setState(() {
              buscarCep(_cepController.text);
            });
          }, child: Text("buscar")),

          
        ],
      ),
      
      bottomNavigationBar: CustomBottomBar(),
    );
  }


  Future buscarCep(cep) async {
    var dados;
    var url = Uri.parse("https://viacep.com.br/ws/$cep/json/");
    final response = await http.get(url); 
    if(response.statusCode == 200){
      dados = jsonDecode(response.body);
    } else {
      dados = "cep inválido";
    }
    return response;  
  }

}