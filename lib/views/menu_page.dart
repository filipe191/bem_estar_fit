import 'package:bem_estar_fit/components/app_bar.dart';
import 'package:bem_estar_fit/components/menu_card.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(children: [
        menuCard(
        iconeModel: Icons.calculate,
        textMenu: 'Calcular IMC',
        funcao: (){
          Navigator.of(context).pushNamed('/imc');
        },
        ),
        menuCard(
          iconeModel: Icons.tips_and_updates,
          textMenu: 'Dicas Saudáveis',
          funcao: (){
            Navigator.of(context).pushNamed('/tip');
          },
        ),
        menuCard(
          iconeModel: Icons.info,
          textMenu: 'Sobre o App',
          funcao: null,
        ),
      ]),
    );
  }
}
