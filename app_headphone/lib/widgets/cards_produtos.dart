import 'package:flutter/material.dart';
import '../model/produto.dart';
import '../pages/produto_page.dart';
import '../repository/produtos_repository.dart';

class CardsProduto extends StatefulWidget {
  CardsProduto({Key? key}) : super(key: key);

  @override
  State<CardsProduto> createState() => _CardsProdutoState();
}

class _CardsProdutoState extends State<CardsProduto> {
  final lista = ProdutosRepository.lista;

  static Map<String, Color> cardColor = <String, Color>{
    '1': Colors.teal,
    '2': Colors.indigo,
    '3': Colors.white,
    '4': Color.fromARGB(255, 55, 0, 255),
    '5': Colors.black,
    '6': Color.fromARGB(255, 161, 161, 161),
  };

  mostrarDetalhes(Produto produto) {
    Navigator.push(context,
        MaterialPageRoute(builder: (_) => ProdutoPage(produto: produto)));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      margin: EdgeInsets.only(top: 20),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 15, right: 10),
          itemCount: ProdutosRepository.lista.length,
          itemBuilder: (BuildContext context, int produto) {
            return Container(
              margin: EdgeInsets.only(right: 10),
              child: InkWell(
                onTap: () => {mostrarDetalhes(lista[produto])},
                child: Card(
                    elevation: 5,
                    color: cardColor['6'],
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 100,
                            child: Image.asset(lista[produto].image),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(lista[produto].nome,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: cardColor['5']))
                            ],
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'R\$' + lista[produto].preco.toString(),
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Card(
                                  color: Colors.black,
                                  elevation: 8,
                                  child: Icon(
                                    Icons.add,
                                    color: cardColor['3'],
                                  ),
                                )
                              ]),
                        ],
                      ),
                    )),
              ),
            );
          }),
    );
  }
}
