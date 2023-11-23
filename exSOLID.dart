abstract class Personagem {
  String nome;
  int idade;

  Personagem(this.nome, this.idade);

  void emitirSom();
}

 
class AnimalTerrestre extends Personagem {
  AnimalTerrestre(String nome, int idade) : super(nome, idade);

  @override
  void emitirSom() {
    print("$nome faz um som terrestre.");
  }
}

 
class AnimalAquatico extends Personagem {
  AnimalAquatico(String nome, int idade) : super(nome, idade);

  @override
  void emitirSom() {
    print("$nome faz um som aquático.");
  }
}


class CadeiaAlimentar {
  void predar(Personagem predador, Personagem presa) {
    print("${predador.nome} está caçando ${presa.nome}!");
  }
}

void main() {
  final camelo = AnimalTerrestre("Camelo", 10);
  final leao = AnimalTerrestre("Leão", 8);
  final peixeBoi = AnimalAquatico("Peixe-boi", 20);

  camelo.emitirSom();  
  leao.emitirSom(); 
  peixeBoi.emitirSom(); 

  final cadeiaAlimentar = CadeiaAlimentar();
  cadeiaAlimentar.predar(leao, camelo);  
}