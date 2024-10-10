import 'dart:io';

// Clase abstracta que define las operaciones básicas
abstract class Operacion {
  int sumar(int a, int b);
  int restar(int a, int b);
  int multiplicar(int a, int b);
}

// Clase derivada que implementa las operaciones
class Calculadora extends Operacion {
  @override
  int sumar(int a, int b) => a + b;

  @override
  int restar(int a, int b) => a - b;

  @override
  int multiplicar(int a, int b) => a * b;
}

void main() {
  Calculadora calc = Calculadora();

  // Ingresar el primer número
  print('Ingresa el primer número:');
  int? num1 = int.parse(stdin.readLineSync()!);

  // Ingresar el segundo número
  print('Ingresa el segundo número:');
  int? num2 = int.parse(stdin.readLineSync()!);

  // Mostrar resultados usando los métodos de la clase derivada
  print("Suma: ${calc.sumar(num1, num2)}");
  print("Resta: ${calc.restar(num1, num2)}");
  print("Multiplicación: ${calc.multiplicar(num1, num2)}");
}

