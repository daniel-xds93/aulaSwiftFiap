class Enfermeira: NSObject {

  var nome: String?
  var idade: Int?
  var horas: Float?
  var vacina: Bool

  
  init(nom: String?, anos: Int?, hrs: Float? = 0, vasCovid: String? = "n"){
    self.nome = nom;
    self.idade = anos;
    self.horas = hrs;

    if(vasCovid == "s"){
      self.vacina = true;
    }else{
      self.vacina = false;
    }
  }

  // OVERRIDE
  public override var description: String{
      return String("Dados do(a) enfermeiro(a): \nNome: \(self.nome) \nIdade: \(self.idade) ");
  }

  // METODOS COM RETORNO
  func Salario(nivel: Int?) -> Double{

    var sal: Double? = 0;

    switch(nivel){
      case 1:
        sal = Double(horas!) * 10;
        break;
      case 2:
        sal = Double(horas!) * 20;
        break;
      case 3:
        sal = Double(horas!) * 30;
        break;
      case 4:
        sal = Double(horas!) * 40;
        break;
      default:
        sal = 0;
        break;
    }

    return Double(sal!);
  }

  // MÉTODO SEM RETORNO
  func Abono(horas: Float?){

    let horasMin: Float? = 160;

    if(Float(horas!) > Float(horasMin!)){
      print("Abono de R$ 700,00");
    }  
  }

  //MÉTODO SEM PARÂMETRO 
  func Resposta() -> String{
    var resp = "";

    if(self.vacina){
      resp = "Enfermeiro(a) vacinado(a)";
    }else{
      resp = "Enfermeiro(a) precisa ser vacinado(a)";
    }

    return resp;
  } 

  func Mensagem(){
    print(Resposta());
  }
  
}