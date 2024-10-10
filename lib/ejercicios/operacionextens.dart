import 'dart:io';

// Clase que define las operaciones básicas
class Operacion {
  int sumar(int a, int b) => a + b;
  int restar(int a, int b) => a - b;
  int multiplicar(int a, int b) => a * b;
}

// Clase derivada que agrega una nueva operación
class CalculadoraAvanzada extends Operacion {
  int dividir(int a, int b) {
    if (b == 0) {
      throw Exception("No se puede dividir entre cero");
    }
    return a ~/ b;  // Operador ~/ para división entera
  }
}

void main() {
  CalculadoraAvanzada calc = CalculadoraAvanzada();

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

  try {
    print("División: ${calc.dividir(num1, num2)}");
  } catch (e) {
    print(e); // Manejar el error de división por cero
  }
}


