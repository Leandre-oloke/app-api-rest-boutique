

import 'dart:convert';

import 'package:http/http.dart' as htt;

class ApiServices {
  static final ApiServices _singleton = ApiServices._internal();

  ApiServices._internal(); // Constructeur privé
  factory ApiServices() => _singleton;

  Future<dynamic> getData(String url) async {
   
   try {
      // Simuler un appel API avec un délai
      final response = await htt.get(Uri.parse(url));
       if (response.statusCode == 200) {
        return jsonDecode(response.body); // Retourner les données reçues
       }
       else {
        throw Exception("Échec du chargement des données : ${response.statusCode}. Raison: ${response.reasonPhrase}");

       }
        return response.body; // Retourner les données reçues
      await Future.delayed(Duration(seconds: 2));
      return "Données récupérées depuis l'API";
    } catch (e) {
      return "Erreur lors de la récupération des données : $e";
    }

    // Simuler un appel API avec un délai
    await Future.delayed(Duration(seconds: 2));
    return "Données récupérées depuis l'API";
  }
}