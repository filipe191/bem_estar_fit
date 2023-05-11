import 'package:bem_estar_fit/model/imc.dart';

class ImcController{
  static final ImcController instance = ImcController();

  double calcularImc() {
    double imc = 0.0;
    imc = Imc.instance.getPeso() / (Imc.instance.getAltura() * Imc.instance.getAltura());
    return imc;
  }

  String verificarErros(String peso, String altura) {
    String error = '';

    if (peso.isEmpty || altura.isEmpty){
      error = 'Preencha todos os campos!!!';
    }else if(double.parse(peso).isNegative || double.parse(altura).isNegative){
      error = 'Não coloque valores negativos!!!';
    }else if(double.parse(peso) == 0 || double.parse(altura) == 0){
      error = '';
    }

    return error;
  }
}