import 'dart:io';

void main(List<String> arguments) {
  // stdout.write("Masukkan suhu dalam Fahreinheit: ");
  // var fahreinheit = num.parse(stdin.readLineSync()!);
  //
  // var celcius = (fahreinheit - 32) * 5 / 9;
  // print("$fahreinheit derajat fahreinheit = ${celcius.toStringAsFixed(2)} derajat celcius");

  stdout.write("""
Pilih menu :
1. Fahreinheit => Celcius
2. Kelvin => Celcius
3. Reamur => Celcius
4. Celcius => Fahreinheit
5. Celcius => Kelvin
6. Celcius => Reamur
    
Masukkan Pilihan : """);
  var pilihan = int.parse(stdin.readLineSync()!);

  switch(pilihan){
    case 1:{
      print("== Konversi Fahreinheit ke Celcius ===");
      stdout.write("Masukkan suhu dalam Fahreinheit = ");
      var fahreinheit = num.parse(stdin.readLineSync()!);

      var celcius = (fahreinheit - 32) * 5 / 9;

      print("$fahreinheit derajat fahreinheit = ${celcius.toStringAsFixed(3)} derajat celcius");
      break;
    }

    case 2:{
      print("== Konversi Kelvin ke Celcius ==");
      stdout.write("Masukkan suhu dalam Kelvin = ");
      var kelvin = num.parse(stdin.readLineSync()!);

      var celcius = kelvin - 273;
      print("$kelvin derajat kelvin = ${celcius} derajat celcius");
      break;
    }

    case 3:{
      print("== Konversi Reamur ke Celcius ==");
      stdout.write("Masukkan suhu dalam Reamur = ");
      var reamur = num.parse(stdin.readLineSync()!);

      var celcius = (5/4) * reamur;
      print("$reamur derajat reamur = ${celcius.toStringAsFixed(2)} derajat celcius");
      break;
    }

    case 4:{
      print("== Konversi Celcius ke Fahreinheit ==");
      stdout.write("Masukkan suhu dalam Celcius = ");
      var celcius = num.parse(stdin.readLineSync()!);

      var fahreinheit = (9/5) * celcius + 32;
      print("$celcius derajat celcius = ${fahreinheit.toStringAsFixed(3)} derajat fahreinheit");
      break;
    }

    default:{
      print("Pilihan tidak ditemukan!");
      break;
    }
  }
}
