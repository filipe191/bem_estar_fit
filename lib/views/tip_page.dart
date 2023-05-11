import 'package:bem_estar_fit/components/app_bar.dart';
import 'package:flutter/material.dart';

class TipPage extends StatefulWidget {
  const TipPage({super.key});

  @override
  State<TipPage> createState() => _TipPageState();
}

class _TipPageState extends State<TipPage> {
  List tips = [
    'Mantenha uma alimentação saudável e equilibrada.',
    'Pratique exercícios físicos regularmente.',
    'Consulte um médico regularmente',
    'Não esqueça do protetor solar',
    'Faça do sono uma de suas prioridades',
    'Beba água frequentemente',
    'Elimine de vez o cigarro'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(children: [
        //ROW/COLUMN a coluna vai ocupar a menor largura e a maior altura, e a linha vice-versa
        ///tem que colocar o childran antes de colocar o tex
        const Text(
          'Dicas de Saúde e bem-estar.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.all(30),
          itemCount: tips.length,
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(), // o que ele vai usar para separar os itens da lista
          itemBuilder: (context, int index) {
            //devolve um widget para cada interação da lista

            return Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 30,
                ),
                child: Text(
                  (index + 1).toString() + '. ' + tips[index], // ele da dica de interpolação
                  style: TextStyle(fontSize: 30),
                ));
          },
        )
      ]),
    );
  }
}
