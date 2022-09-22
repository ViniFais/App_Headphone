import 'package:app_headphone/pages/produto_page.dart';
import 'package:app_headphone/widgets/appbar_home.dart';
import 'package:app_headphone/widgets/bottomnavigation.dart';
import 'package:app_headphone/widgets/cards_produtos.dart';
import 'package:flutter/material.dart';
import '../repository/produtos_repository.dart';
import '../model/produto.dart';
import '../widgets/header.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final lista = ProdutosRepository.lista;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarHome(),
        body: SingleChildScrollView(
          child: Column(children: [
            const Header(),
            CardsProduto(),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 25),
                  child: Text(
                    'Mais vendidos!',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            CardsProduto(),
            const SizedBox(
              height: 30,
            )
          ]),
        ),
        bottomNavigationBar: bottomNavigation());
  }
}
