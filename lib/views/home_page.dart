import 'package:bem_estar_fit/components/app_bar.dart';
import 'package:bem_estar_fit/components/main_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //nome do arquivo diferente do nome da classe
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.PNG',
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.5,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              mainButton(
                funcao: () {
                  Navigator.of(context).pushNamed('/menu');
                },
                texto: 'Acessar App',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
