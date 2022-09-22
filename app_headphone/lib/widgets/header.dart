import 'package:app_headphone/widgets/categorias.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  static Map<String, Color> cores = <String, Color>{
    '1': Colors.teal,
    '2': Colors.indigo,
    '3': Color.fromARGB(255, 182, 182, 182),
    '4': Color.fromARGB(255, 145, 145, 145),
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Card(
            elevation: 8,
            color: cores['3'],
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: Form(
                  child: TextFormField(
                style: TextStyle(
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  hintText: 'Buscar produto',
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: IconButton(
                      onPressed: () {}, icon: Icon(Icons.mic_rounded)),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
                keyboardType: TextInputType.text,
              )),
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Categorias',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextButton(
                child: Text('Todas',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: cores['4'],
                    )),
                onPressed: () {},
              )
            ],
          ),
        ),
        categoria(),
      ],
    );
  }
}
