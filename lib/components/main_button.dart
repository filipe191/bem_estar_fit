import 'package:flutter/material.dart';

ElevatedButton mainButton({Function()? funcao, String texto = ''}){ //interrogação indica que o button pode ser nulável
                                                //texto = '' para nao dar erro de nulo abaixo no texto
                                                //quando são não posicionais utiliza a chave, exemplo, pode ser 2,1 ou 1,2
  return ElevatedButton(
              onPressed: funcao,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 27, 157, 31)),
                padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
              ),
              child: Text(texto, style: const TextStyle(fontSize: 20,),),
            );
}