class Imc{

  //Retorna uma instância única de IMC
  //singleton é pq só tem uma instancia daquela classe ativa, exclusiva e unicamente
  //static só podem ser usado no dominio de classe e não no dominio de objeto
  static final Imc instance = Imc._(0.0, 0.0);

  //Construtor privado
  Imc._(this._peso, this._altura);
  

  double _peso; //chiou pq não afirmei que pode ser nulavel
  double _altura; //_ indica que é private

  double getPeso(){
    return _peso;
  }

  void setPeso(double peso){
    _peso = peso;
  }

  double getAltura(){
    return _altura;
  }

  void setAltura(double altura){
    _altura = altura;
  }

}


