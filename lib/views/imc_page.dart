import 'package:bem_estar_fit/components/form_text_field.dart';
import 'package:bem_estar_fit/components/main_button.dart';
import 'package:bem_estar_fit/controller/imc_controller.dart';
import 'package:bem_estar_fit/model/imc.dart';
import 'package:flutter/material.dart';

import '../components/alert_dialog.dart';
import '../components/app_bar.dart';

class ImcPage extends StatefulWidget {
  const ImcPage({super.key});

  @override
  State<ImcPage> createState() => _ImcPageState();
}

class _ImcPageState extends State<ImcPage> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  double _imc = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Informe os dados',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w900,
            ),
          ),
          FormTextField(
            labelText: 'Peso(kg)',
            hintText: 'Peso(kg)',
            textController: pesoController,
          ),
          FormTextField(
            labelText: 'Altura(m)',
            hintText: 'Altura(m)',
            textController: alturaController,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              mainButton(
                  funcao: () {
                    String error = ImcController.instance.verificarErros(
                        pesoController.text, alturaController.text);

                    // 1. Obter os valores e colocar no IMC

                    //Verificar se não tem erro
                    if (error == '') {
                      setState(() {
                        Imc.instance.setAltura(double.parse(alturaController.text));
                        Imc.instance.setPeso(double.parse(pesoController.text));

                        // 2. Chamar o método para calcular imc
                        _imc = ImcController.instance.calcularImc();
                      });
                    } else {
                      showDialog(context: context, builder: (BuildContext context){
                      return alert(context, 'Erro ao calcular IMC', error);
                    });    
                    }

                    // 3. Mostrar o resultado
                  },
                  texto: 'Calcular'),
              const SizedBox(
                width: 10,
              ),
              mainButton(
                  funcao: () {
                    Navigator.of(context)
                        .pop(); //volta na tela contida na pilha
                  },
                  texto: 'Voltar'),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(_imc > 0 ? 'IMC: ${_imc.toStringAsFixed(2)}' : ''),
        ],
      ),
    );
  }
}
