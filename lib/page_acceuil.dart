 import 'dart:convert';

 import 'package:app_api_rest_boutique/utils/services/api_services.dart';
 import 'package:flutter/material.dart';

// class PageAcceuil extends StatefulWidget {
//   const PageAcceuil({super.key});

//   @override
//   State<PageAcceuil> createState() => _PageAcceuilState();
// }

// class _PageAcceuilState extends State<PageAcceuil> {
//  List<Map<String, dynamic>> data  = [];
//  bool _isLoading = false;

//  @override
//   void initState() {
//     super.initState();
//     ApiServices apiServices = ApiServices();
//     _isLoading = true;
//     ApiServices.getData("https://jsonplaceholder.typicode.com/users").then((result,) {
      
     
//         print(jsonEncode(result));
//         setState(() {
//           _isLoading = false;
//           data = List<Map<String, dynamic>>.from(result);
//         });
      
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
//         foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
//         title: const Text(
//           "Page Accueil",
//         ),
//       ),
//        body: Center(
//         child: Container(
//           margin: const EdgeInsets.all(10),
//           width: MediaQuery.of(context).size.width,
//           decoration: BoxDecoration(
//             border: Border.all(
//               color: Theme.of(context).colorScheme.primary,
//               width: 3,
//             ),
//             borderRadius: const BorderRadius.all(Radius.circular(10)),
//           ),
//           child: _isLoading
//               ? CircularProgressIndicator()
//               : ((data.isNotEmpty)
//                   ? ListView.separated(
//                       itemBuilder: (context, index) {
//                         return ListTile(
//                           leading: CircleAvatar(
//                             backgroundImage: NetworkImage(
//                               "https://i.pravatar.cc/150?img=${data[index]["id"]}",
//                             ),
//                             radius: 60,
//                           ),
//                           title: Text(data[index]["name"]),
//                           subtitle: Text(data[index]["email"]),
//                         );
//                       },
//                       separatorBuilder: (context, index) {
//                         return Divider(
//                           color: Theme.of(context).colorScheme.tertiary,
//                           thickness: 4,
//                         );
//                       },
//                       itemCount: data.length,
//                     )
//                   : Text(
//                       "Liste vide !",
//                       style: Theme.of(context).textTheme.headlineMedium,
//                     )),
//         ),
//       ),
//     );
//   }
// }

// import 'dart:convert';

// //import 'package:app_api_rest_boutique/services/api_services.dart';
// import 'package:flutter/material.dart';

import 'dart:convert'; // Permet d'encoder et décoder les données JSON
import 'package:flutter/material.dart'; // Fournit tous les widgets Material de Flutter

// Widget principal de la page d'accueil, avec état (StatefulWidget)
class PageAcceuil extends StatefulWidget {
  const PageAcceuil({super.key}); // Constructeur avec clé optionnelle

  @override
  State<PageAcceuil> createState() => _PageAcceuilState(); // Création de l'état associé
}

// Classe qui gère l'état du widget PageAcceuil
class _PageAcceuilState extends State<PageAcceuil> {
  // Liste qui va contenir les données récupérées depuis l'API
  // Chaque élément est une Map (clé-valeur)
  List<Map<String, dynamic>> data = [];

  // Indique si le chargement des données est en cours
  bool _isLoading = false;

  // Méthode du cycle de vie appelée une seule fois au lancement du widget
  // Elle est utilisée ici pour récupérer les données
  @override
  void initState() {
    super.initState(); // Appel obligatoire de la méthode parente

    // Création d'une instance du service API
    ApiServices apiServices = ApiServices();

    // Activation de l'indicateur de chargement
    _isLoading = true;

    // Appel de la méthode getData pour récupérer les utilisateurs
    // then() permet de gérer le résultat sans rendre initState asynchrone
    apiServices
        .getData("https://jsonplaceholder.typicode.com/users")
        .then((result) {
      // Affiche les données reçues dans la console au format JSON
      print(jsonEncode(result));

      // Mise à jour de l'état du widget
      setState(() {
        _isLoading = false; // Fin du chargement

        // Conversion du résultat en liste de Map<String, dynamic>
        data = List<Map<String, dynamic>>.from(result);
      });
    });
  }

  // Méthode qui décrit l'interface graphique du widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barre d'application en haut de la page
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor, // Couleur de fond
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor, // Couleur du texte
        title: const Text("Page Acceuil"), // Titre de la page
      ),

      // Corps principal de la page
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10), // Marge extérieure
          width: MediaQuery.of(context).size.width, // Largeur de l'écran

          // Décoration du conteneur
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.primary, // Couleur de la bordure
              width: 3, // Épaisseur de la bordure
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10)), // Coins arrondis
          ),

          // Affichage conditionnel selon l'état de chargement
          child: _isLoading
              // Si les données sont en cours de chargement
              ? const Center(
                  child: CircularProgressIndicator(), // Indicateur de chargement
                )
              // Sinon, si les données sont disponibles
              : (data.isNotEmpty
                  ? ListView.separated(
                      // Construit chaque élément de la liste
                      itemBuilder: (context, index) {
                        return ListTile(
                          // Avatar circulaire à gauche
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://i.pravatar.cc/150?img=${data[index]["id"]}", // Image aléatoire
                            ),
                            radius: 60, // Taille de l'avatar
                          ),

                          // Nom de l'utilisateur
                          title: Text(data[index]["name"]),

                          // Email de l'utilisateur
                          subtitle: Text(data[index]["email"]),
                        );
                      },

                      // Séparateur entre les éléments de la liste
                      separatorBuilder: (context, index) {
                        return Divider(
                          color: Theme.of(context).colorScheme.tertiary, // Couleur du séparateur
                          thickness: 4, // Épaisseur du séparateur
                        );
                      },

                      // Nombre total d'éléments dans la liste
                      itemCount: data.length,
                    )
                  // Si la liste est vide
                  : Text(
                      "Liste vide !", // Message affiché
                      style: Theme.of(context).textTheme.headlineMedium, // Style du texte
                    )),
        ),
      ),
    );
  }
}
