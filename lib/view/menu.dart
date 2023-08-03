import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playground/view/material.dart';
import 'package:playground/view/principal.dart';
import 'package:playground/view/projeto.dart';

//indice de seleção da tela
int _selectedIndex = 0;

//vetor de telas a serem utilizadas
List<Widget> _stOptions = <Widget>[
  HomePage(),
  ExemplosPage(),
  ProjetoPage(),
];

class Menu extends StatefulWidget {
  int _opcao;

  //contrutor passando o indice da tela selecionada
  Menu(this._opcao);

  @override
  _MenuState createState() => _MenuState(this._opcao);
}

class _MenuState extends State<Menu> {
  //construtor
  _MenuState(this._opcao);
  int _opcao;

  @override
  void initState() {
    _selectedIndex = _opcao;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      //corpo da aplicação, aqui são setadas as telas
      body: _stOptions.elementAt(_selectedIndex),

      //botões do BN
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF1C6094),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF1C6094),
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF1C6094),
            icon: Icon(Icons.auto_stories),
            label: 'Material',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF1C6094),
            icon: Icon(Icons.info),
            label: 'Projeto',
          ),
        ],

        unselectedItemColor: Colors.white,

        currentIndex: _selectedIndex,

        selectedItemColor: Color(0xFFF7BF3E),
        //greenAccent,
        onTap:
            _onItemTapped, //chama o métdodo onItemTapped ao clicar no botao do BTNNavigation
      ),
    );
  }

  @override
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
