void main() {
  final wolverine = new Heroe(nombre: 'Logan', poder:
  'PoderdeUnaLuka', apodo: 'Leke');
//wolverine.nombre = 'LoganX';
//wolverine.poder = 'RegeneraciónX';
  print(wolverine);
}
class Heroe {
  String nombre;
  String poder;
  String apodo;

  Heroe({required this.nombre, required this.poder, required this.apodo});

  String toString() {
    return 'Heroe: nombre: ${this.nombre}, poder:${this.poder}, apodo:${this.apodo}';

  }
}