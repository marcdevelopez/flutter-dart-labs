// Every app Dart begin with function main
void main() {
  // Si doy un varlo a una variable y no establezco el tipo
  var anyVar = 'any thing';
  //puedo saber que tipo de variable es de esta manera:
  print(anyVar.runtimeType); // imprimira "String"
  // anyVar = 1; // Si descomentamos esta linea dara error ya que una vez
  // asignado el tipo a una variable no es posible cambiar su tipo a no ser desee
  // cambiar a un subtipo con el operador as, aunque en este caso, al no ser asi,
  // dara una excepcion:
  // anyVar = 1 as String;
  // Es buen habito cuidar el tipado de las variables para tener codigo seguro.

  // A diferencia de otros lenguajes como Java, en Dart para todos los numeros
  // con decimales solo esta el tipo double:
  double longDecNum = 1.213213416234983245623789467544434554;
  double smallDecNum = 1.2;
  int integer = 1;
  bool option = false;
  String string = "word"; // Con comillas dobles
  String otherString = 'other word'; // O comillas simples
  // Como curiosidad, String no es se escribe con mayuscula, a diferencia de int
  // o bool, aunque todos ellos son clases en Dart, pero por convencion se
  // escriben asi.
  List myListOfThings = ["mesa", "silla", 1];
  // Si no asignamos el tipo, acepta
  // varios tipos una Lista
  print('$myListOfThings');
}
