class Cosecha {
  final String codigo;
  final String finca;
  final String cultivo;
  double _kilogramos = 0; // privado

  Cosecha({
    required this.codigo,
    required this.finca,
    required this.cultivo,
    required double kilogramos,
  }) {
    this.kilogramos = kilogramos; // usa el setter
  }

  double get kilogramos => _kilogramos;

  set kilogramos(double valor) {
    if (valor < 0) {
      throw ArgumentError('Los kg no pueden ser negativos');
    }
    _kilogramos = valor;
  }

  double get quintales => _kilogramos / 45.36;

  void mostrar() {
    print('$codigo · $finca · $cultivo: $kilogramos kg');
  }
}