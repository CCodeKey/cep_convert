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
  String _regiaoValueCep = "";
  String _cidadeValueCep = "";
  String _estadoValueCep = "";
  bool btnController = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cores.cor1,

      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 30, right: 30, bottom: 50),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset("assets/images/localIcon.png"),
            
                Container(
                  padding: EdgeInsets.only(left: 30),
                  height: 90,
                  width: 380,
                  child: Card(
                    color: Cores.cor2,
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                        color: Cores.cor5
                      )
                    ),

                    child: Padding(
                      padding: const EdgeInsets.only(left: 90, top: 38),
                      
                      child: 
                      TextField(
                        controller: _cepController,
                        keyboardType: TextInputType.numberWithOptions(),
                        maxLength: 8,
                        maxLengthEnforcement: MaxLengthEnforcement.enforced,
                        
                        // padding: const EdgeInsets.only(left: 60, top: 12),
                        
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "   seu cep",
                          // hintText: "digite seu cep",
                          hintStyle: TextStyle(
                            fontFamily: "inter",
                            color: Cores.cor3,
                            fontSize: 28,
                      
                          )
                        ),
                      
                        style: TextStyle(
                              fontFamily: "inter",
                              color: Cores.cor5,
                              fontSize: 32,
                              
                            ), 
                      
                        onChanged: (value) {
                          if(_cepController.toString().length == 209){
                            setState(() {
                              btnController = true;
                            });
                          } else {
                            setState(() {
                              btnController = false;
                            });
                          }
                        },
                        ),
                        
                    ),),
                  )
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 40),
          ),

          Container(
            height: 30,
            width: 500,
            margin: EdgeInsets.only(left: 30),
            child: Text("ESTADO", style: TextStyle(
              color: Cores.cor3,
              fontFamily: "inter",
              fontSize: 20
            ),),
          ),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            height: 80,
            width: 500,
            child: Card(
              color: Cores.cor2,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(
                  color: Cores.cor3
                )
              ),

              child: Center(
                child: Text(_estadoValueCep, style: TextStyle(
                  color: Cores.cor5,
                  fontFamily: "inter",
                  fontSize: 20,
                ),),
              )
              
            ),
            ),

          Padding(padding:EdgeInsets.only(bottom: 30) , child:Container()),

          Container(
            height: 30,
            width: 500,
            margin: EdgeInsets.only(left: 30),
            child: Text("REGIÃO", style: TextStyle(
              color: Cores.cor3,
              fontFamily: "inter",
              fontSize: 20
            ),),
          ),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            height: 80,
            width: 500,
            child: Card(
              color: Cores.cor2,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(
                  color: Cores.cor3
                )
              ),

              child: Center(
                child: Text(_regiaoValueCep, style: TextStyle(
                  color: Cores.cor5,
                  fontFamily: "inter",
                  fontSize: 20,
                ),),
              )
              
            ),
            ),

          Padding(padding:EdgeInsets.only(bottom: 30) , child:Container()),

          Container(
            height: 30,
            width: 500,
            margin: EdgeInsets.only(left: 30),
            child: Text("CIDADE", style: TextStyle(
              color: Cores.cor3,
              fontFamily: "inter",
              fontSize: 20
            ),),
          ),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            height: 80,
            width: 500,
            child: Card(
              color: Cores.cor2,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(
                  color: Cores.cor3
                )
              ),

              child: Center(
                child: Text(_cidadeValueCep, style: TextStyle(
                  color: Cores.cor5,
                  fontFamily: "inter",
                  fontSize: 20,
                ),),
              )
              
            ),
            ),

          Container(
            height: 52,
            width: 254,
            margin: EdgeInsets.only(top: 80),
            child: ElevatedButton(
              onPressed: btnController ? (){
                setState(() {
                  validacao(_cepController.text);
                });
            } : null, child: Text("buscar", style: TextStyle(
              color: Cores.cor5,
              fontSize: 20,
            ),), 
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Cores.cor2),
              side: WidgetStatePropertyAll(BorderSide(color: Cores.cor5))
            ),),
          ),
        ],
      ),
      
      bottomNavigationBar: CustomBottomBar(),
    );
  }

  Future show(BuildContext context){
    return showDialog(
      context: context, 
      builder: (BuildContext context){
        return AlertDialog(
          title: Text("Atenção", style: TextStyle(color: Cores.cor5),),
          backgroundColor: Cores.cor1,
          actions: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text("Insira um valor válido para um cep",style: TextStyle(color: Cores.cor4, fontSize: 18)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 170, top: 20),
                child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      Navigator.pop(context);
                    });
                  }, child: Text("Corrigir", style: TextStyle(color: Cores.cor4, fontSize: 18)),
                   style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Cores.cor2)),),
              )
            ],)
          ],
        );
      });
  }
  
  void validacao(String cep){
  try{
    int newCep = int.parse(cep);
    buscarCep(newCep);
  } catch (e){
    show(context);
  }
}
  
  Future buscarCep(valorCep) async {
    Map dados;
    var url = Uri.parse("https://viacep.com.br/ws/$valorCep/json/");
    final response = await http.get(url); 
    if(response.statusCode == 200){
      dados = jsonDecode(response.body);
      if (dados.keys.toString() == "(erro)"){
        show(context);
      } else {
        setantoDadosRecebidos(dados);
      }
    } else {
      show(context);
    }
    return response;  
  }

  void setantoDadosRecebidos(Map dados){  
    setState(() {
      _estadoValueCep = dados["estado"];
      _regiaoValueCep = dados["regiao"];
      _cidadeValueCep = dados["localidade"];
    });
  }

}