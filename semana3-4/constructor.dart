class Cosecha {
  final String codigo;
  final String cultivo;
  final double kilogramos;

  // Parámetros con nombre
  Cosecha({
    required this.codigo,
    required this.cultivo,
    this.kilogramos = 0.0,
  });

  // Constructor nombrado
  Cosecha.vacia(String codigo)
      : this(codigo: codigo, cultivo: 'Sin definir');

  void mostrar() {
    print('$codigo - $cultivo - $kilogramos kg');
  }
}

void main() {
  var c = Cosecha(codigo: 'C003', cultivo: 'Arroz', kilogramos: 800.0);
  var v = Cosecha.vacia('C004');

  c.mostrar();
  v.mostrar();
}