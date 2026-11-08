class Cultivo {
  final String nombre;
  final double hectareas;

  Cultivo(this.nombre, this.hectareas);

  String describir() => '$nombre en $hectareas ha';
}

class Banano extends Cultivo {
  final int cajasPorHa;

  Banano(double ha, this.cajasPorHa) : super('Banano', ha);

  @override
  String describir() =>
      '${super.describir()} · $cajasPorHa cajas/ha';
}

void main() {
  print(Banano(5, 2200).describir());
}