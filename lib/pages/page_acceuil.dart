// import 'dart:convert';

// import 'package:app_api_rest_boutique/utils/services/api_services.dart';
// import 'package:flutter/material.dart';

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



import 'dart:convert';

import 'package:app_api_rest_boutique/services/api_services.dart';
import 'package:app_api_rest_boutique/viewmodels/utilisateur_view_model.dart';
import 'package:flutter/material.dart';

// Page d'accueil qui affiche la liste des utilisateurs
class PageAcceuil extends StatefulWidget {
  const PageAcceuil({super.key});

  @override
  State<PageAcceuil> createState() => _PageAcceuilState();
}

class _PageAcceuilState extends State<PageAcceuil> {
  UtilisateurViewModel _viewModel = new UtilisateurViewModel(ApiServices());


  @override
  void initState() {
    super.initState();
    ApiServices apiServices = ApiServices();
  }

  @override
  Widget build(BuildContext context) {
    Future<void> chargerUtilisateurs() async {
      await _viewModel.chargerUtilisateurs();
      setState(() {});
    }
    // Charger les utilisateurs lorsque la page est construite
    // Scaffold : structure de base de la page avec appbar et body
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        title: const Text("Page Acceuil"),
      ),
      body: Center(
        // Container principal avec marges et bordures
        child: _viewModel.isLoading  // Indique si les données sont en cours de chargement
            ? CircularProgressIndicator() // Affiche un indicateur de chargement si les données sont en cours de chargement
            : Container(
                margin: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primary, // Couleur de la bordure
                    width: 3,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: ((_viewModel.utilisateurs.isNotEmpty) // Vérifie si la liste des utilisateurs n'est pas vide
                    ? ListView.separated(
                        itemBuilder: (context, index) {
                          // Construire chaque élément de la liste des utilisateurs
                          return ListTile(
                            onTap: () { // Action lors du clic sur un utilisateur
                              Navigator.pushNamed(
                                context,
                                "/page-details-profil",
                                arguments: {
                                  "id": _viewModel.utilisateurs[index].id, // Transfert des détails de l'utilisateur
                                  "name": _viewModel.utilisateurs[index].name, // Nom de l'utilisateur
                                  "email": _viewModel.utilisateurs[index].email,
                                  "image":
                                      "https://i.pravatar.cc/150?img=${_viewModel.utilisateurs[index].id}", // Image de l'utilisateur
                                },
                              );
                            },
                            // Affichage de l'avatar, du nom et de l'email de l'utilisateur
                            leading: Hero(
                              tag: _viewModel.utilisateurs[index].id,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                  "https://i.pravatar.cc/150?img=${_viewModel.utilisateurs[index].id}",
                                ),
                                radius: 60,
                              ),
                            ),
                            title: Text(_viewModel.utilisateurs[index].name), // Nom de l'utilisateur
                            subtitle: Text(_viewModel.utilisateurs[index].email),
                          );
                        },
                        // Ligne de séparation entre les éléments de la liste
                        separatorBuilder: (context, index) {
                          return Divider(
                            color: Theme.of(context).colorScheme.tertiary,
                            thickness: 4,
                          );
                        },
                        itemCount: _viewModel.utilisateurs.length, // Nombre d'utilisateurs dans la liste
                      )
                    : Text(
                        "Liste vide !",
                        style: Theme.of(context).textTheme.headlineMedium, // Style du texte lorsque la liste est vide
                      )),
              ),
      ),
    );
  }
}