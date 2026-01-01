// Orden de imporataciones
// Librerias locales de dart
import 'dart:convert';

// Librerias de terceros de dart las que usualmente instalamos con pub
import 'package:http/http.dart' as http;
import 'package:paquete/classes/req_response.dart';

// Paquetes custom o propios de nostros
import 'package:paquete/paquete.dart' as paquete;

/**
 * El orden de importaciones debe respetarse para que todo funcione bien
 */

void main(List<String> arguments) {
  Uri url = Uri.parse(
    "https://6955e641b9b81bad7af1b7d6.mockapi.io/api/v1/users/users",
  );

  Future<http.Response> response = http.get(url);

  response.then((value) {
    if (value.statusCode == 200) {
      //   print(value.body);
      //   print(value.body.runtimeType);

      // Es mas sencillo tratar objetos
      final body = reqResponseFromJson(value.body);

      for (ReqResponse objReqRes in body) {
        print(objReqRes.name);
      }

      // List<ReqResponse>
      print(body.runtimeType); // Lista de objetos req_response
    }
  });

  print("Termino");
}
