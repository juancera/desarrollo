abstract class Vehiculo {}

abstract class Bus extends Vehiculo {}

abstract class Minibus extends Vehiculo {}

abstract class AutobusArticulado extends Vehiculo {}




mixin Motor {
  void encenderMotor() => print('Motor encendido.');
}

mixin TransportePasajeros {
  void transportar() => print('Transportando los pasajeros.');
}

mixin PuertasAutomaticas {
  void abrirPuertas() => print('Puertas abiertas automáticamente.');
}




class BusUrbano extends Bus with Motor, TransportePasajeros, PuertasAutomaticas {
  void recogerPasajeros() => print('Recogiendo pasajeros en la parada.');
  void dejarPasajeros() => print('Dejando pasajeros en la parada.');
}

class Microbus extends Minibus with Motor, TransportePasajeros {}

class BusArticulado extends AutobusArticulado with Motor, TransportePasajeros, PuertasAutomaticas {}




void main() {
  final urbano = BusUrbano();
  urbano.encenderMotor();
  urbano.abrirPuertas();
  urbano.recogerPasajeros();
  urbano.transportar();
  urbano.dejarPasajeros();

  print('<MICROBUS>');

  final micro = Microbus();
  micro.encenderMotor();
  micro.transportar();

  print('<BUS_ARTICULADO>');

  final articulado = BusArticulado();
  articulado.encenderMotor();
  articulado.abrirPuertas();
  articulado.transportar();
}
