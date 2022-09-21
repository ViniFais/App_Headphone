import 'package:app_headphone/model/produto.dart';

class ProdutosRepository {
  static List<Produto> lista = [
    Produto(
        image: '../images/img1.jpg',
        nome: 'Headphone JBL',
        descricao: 'Fone de ouvido da JBL, som fantastico',
        preco: '90.00',
        nota: '4.9'),
    Produto(
        image: '../images/img2.jpg',
        nome: 'Fone de ouvido',
        descricao: 'Fone de ouvido de Luxo',
        preco: '590.00',
        nota: '4.7'),
    Produto(
        image: '../images/img4.jpg',
        nome: 'Headphone JBL',
        descricao: 'Headphone do tipo bluetooth',
        preco: '90.00',
        nota: '4.9'),
    Produto(
        image: '../images/img5.png',
        nome: 'Headphone TOP',
        descricao: 'Fone de ouvido da JBL',
        preco: '90.00',
        nota: '4.9'),
    Produto(
        image: '../images/img6.png',
        nome: 'Headphone AKG',
        descricao: 'Fone de ouvido da JBL',
        preco: '90.00',
        nota: '4.9'),
  ];
}
