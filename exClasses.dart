abstract class OperacaoMatematica {
  double executar(double a, double b);
}

class Soma extends OperacaoMatematica {
  @override
  double executar(double a, double b) => a + b;
}

class Subtracao extends OperacaoMatematica {
  @override
  double executar(double a, double b) => a - b;
}

class Multiplicacao extends OperacaoMatematica {
  @override
  double executar(double a, double b) => a * b;
}

class Divisao extends OperacaoMatematica {
  @override
  double executar(double a, double b) {
    if (b != 0) {
      return a / b;
    } else {
      print('não é possível dividir por zero');
      return double.nan;
    }
  }
}

class Calculadora {
  List<OperacaoMatematica> operacoes = [];

  void adicionarOperacao(OperacaoMatematica operacao) {
    operacoes.add(operacao);
  }

  double realizarOperacao(OperacaoMatematica operacao, double a, double b) {
    return operacao.executar(a, b);
  }
}

void main() {
  Calculadora calculadora = Calculadora();

  calculadora.adicionarOperacao(Soma());
  calculadora.adicionarOperacao(Subtracao());
  calculadora.adicionarOperacao(Multiplicacao());
  calculadora.adicionarOperacao(Divisao());

  double resultadoSoma = calculadora.realizarOperacao(Soma(), 5, 3);
  double resultadoSubtracao = calculadora.realizarOperacao(Subtracao(), 5, 3);
  double resultadoMultiplicacao = calculadora.realizarOperacao(Multiplicacao(), 5, 3);
  double resultadoDivisao = calculadora.realizarOperacao(Divisao(), 5, 3);


  print('Soma = $resultadoSoma');
  print('Subtração = $resultadoSubtracao');
  print('Multiplicação = $resultadoMultiplicacao');
  print('Divisão = $resultadoDivisao');
}