import 'dart:math';

abstract class Forma {
  double get area;
}

class Retangulo implements Forma {
  final double largura;
  final double altura;

  Retangulo(this.largura, this.altura);

  @override
  double get area => largura * altura;
}

class Triangulo implements Forma {
  final double base;
  final double altura;

  Triangulo(this.base, this.altura);

  @override
  double get area => 0.5 * base * altura;
}

class Circulo implements Forma {
  final double radius;

  Circulo(this.radius);

  @override
  double get area => pi * pow(radius, 2);
}

void main() {
  final formas = [
    Retangulo(10, 20),
    Triangulo(10, 20),
    Circulo(10),
  ];

  for (final forma in formas) {
    print('A Area do ${shape.runtimeType} é ${shape.area}');
  }
}