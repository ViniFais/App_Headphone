import 'package:app_headphone/model/produto.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProdutoPage extends StatefulWidget {
  Produto produto;
  ProdutoPage({Key? key, required this.produto}) : super(key: key);

  @override
  State<ProdutoPage> createState() => _ProdutoPageState();
}

class _ProdutoPageState extends State<ProdutoPage> {
 

  int _contador = 0;
  void _incrementoContador() {
    setState(() {
      _contador++;
    });
  }

  void _decrementoContador() {
    setState(() {
      _contador--;
    });
  }

  static Map<String, Color> cores = <String, Color>{
    '1': Colors.yellow,
    '2': Colors.blue,
    '3': Colors.red,
    '4': Colors.white,
    '5': Color.fromARGB(255, 55, 0, 255),
    '6': Colors.black,
    '7': Color.fromARGB(255, 161, 161, 161),
    '8': Color.fromARGB(255, 34, 34, 34),
    '9': Colors.transparent,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cores['8'],
      appBar: AppBar(
        backgroundColor: cores['9'],
        title: Text(
          'VRF som',
          style: TextStyle(fontWeight: FontWeight.w700, color: cores['4']),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: cores['4'],
            )),
        centerTitle: true,
      ),
      body: Container(
        //color: cores['7'],
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 230,
                    height: 230,
                    child: Image.asset(
                      widget.produto.image,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.produto.nome,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: cores['4']),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.produto.descricao,
                    style: TextStyle(fontSize: 16, color: cores['4']),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        widget.produto.nota,
                        style: TextStyle(fontSize: 18, color: cores['4']),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Icon(
                        Icons.star,
                        color: cores['1'],
                        //size: 15,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Row(
                    children: [
                     
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.circle,
                            color: cores['2'],
                            
                          )
                          
                          ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.circle,
                            color: cores['3'],
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.circle,
                            color: cores['4'],
                          )),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black)),
                      onPressed: () {
                        _decrementoContador();
                      },
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      )),
                  Text(
                    '  $_contador  ',
                    style: TextStyle(fontSize: 15, color: cores['4']),
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black)),
                      onPressed: () {
                        _incrementoContador();
                      },
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 255, 255, 255))),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        'R\$ ' + widget.produto.preco,
                        style: TextStyle(color: cores['6']),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
