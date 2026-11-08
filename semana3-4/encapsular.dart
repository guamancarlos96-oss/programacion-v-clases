class Cosecha {
  final String codigo;
  double _kilogramos = 0; // privado

  Cosecha(this.codigo, double kg) {
    kilogramos = kg; // usa el setter
  }

  double get kilogramos => _kilogramos;

  set kilogramos(double valor) {
    if (valor < 0) {
      throw ArgumentError('Los kg no pueden ser negativos');
    }
    _kilogramos = valor;
  }

  double get quintales => _kilogramos / 45.36;
}

void main() {
  var c = Cosecha('C005', 500.0);
  print('${c.codigo}: ${c.kilogramos} kg');
  print('Quintales: ${c.quintales.toStringAsFixed(2)}');

  c.kilogramos = 800.0;
  print('Nuevo valor: ${c.kilogramos} kg');

  try {
    c.kilogramos = -10;
  } on ArgumentError catch (e) {
    print('Error: ${e.message}');
  }
}