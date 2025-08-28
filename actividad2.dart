class Persona {
  String nombre;
  String apellido;
  int edad;

  // Constructor principal con asserts
  Persona(this.nombre, this.apellido, this.edad) 
      : assert(nombre.isNotEmpty, 'El nombre no puede estar vacío'),
        assert(apellido.isNotEmpty, 'El apellido no puede estar vacío'),
        assert(edad >= 0, 'La edad no puede ser negativa') {
    // Evaluamos si es mayor de edad
    if (edad >= 18) {
      print('$nombre $apellido es mayor de edad.');
    } else {
      print('$nombre $apellido es menor de edad.');
    }
  }

  // Constructor nombrado desde un Map
  // ignore: non_constant_identifier_names
  Persona.ApiData(Map<String, dynamic> data)
      : nombre = data['nombre'],
        apellido = data['apellido'],
        edad = data['edad'];

  // Sobrescribimos toString()
  @override
  String toString() {
    return 'Hola, mi nombre es $nombre $apellido y tengo $edad años.';
  }
}

void main() {
  // Instancia usando el constructor principal
  var persona1 = Persona('Juan', 'cera', 20);
  print(persona1);

  print('------------------------');

  // Instancia usando el constructor ApiData
  var persona2 = Persona.ApiData({
    'nombre': 'Lau',
    'apellido': 'barreto',
    'edad': 31
  });
  print(persona2);
}
