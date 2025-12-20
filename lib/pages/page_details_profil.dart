// import 'package:flutter/material.dart';

// class PageDetailsProfil  extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false, // Supprime le bouton de retour
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(context); // Navigue vers la page précédente
//           },
//         ),// Ajoute un bouton de retour personnalisé

//         backgroundColor : Theme.of(context).appBarTheme.backgroundColor,
//         foregroundColor : Theme.of(context).appBarTheme.foregroundColor,
//         title: Text('Détails du Profil'),

//       ),
//       body: Center(
//         child : Container(
//          margin: EdgeInsets.all(10),
//          width: MediaQuery.of(context).size.width,
//          decoration: BoxDecoration(

//            border: Border.all(
//              color: Theme.of(context).colorScheme.primary,
//              width: 3,
//            ),//
//           // borderRadius: BorderRadius.all(Radius.circular(10)),
//          ),
//         child : Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               padding: EdgeInsets.all(10),
//               margin: EdgeInsets.symmetric(vertical: 20),
//               child: CircleAvatar(
//                 radius: 50,
//                 backgroundImage: NetworkImage('https://via.placeholder.com/150'), // Image de profil
//               ),
//             ),
//         )
//         ],
//         ),
//         child: Text('Contenu des détails du profil'),

//       ),
//       Text("Nom de l'utilisateur",
//       style: Theme.of(context).textTheme.titleLarge,
//       ),
//       Text("Email de l'utilisateur",
//       style: Theme.of(context).textTheme.titleMedium,
//       ),
//     );
//   }
// }

// 

import 'package:flutter/material.dart';

class PageDetailsProfil extends StatefulWidget {
  const PageDetailsProfil({super.key});

  @override
  State<PageDetailsProfil> createState() => _PageDetailsProfilState();
}

class _PageDetailsProfilState extends State<PageDetailsProfil> {
  @override
  Widget build(BuildContext context) {
    /// Récupération des arguments passés depuis la page d'accueil
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
     // Affichage des arguments dans la console pour le débogage
    print("-" * 100);
    print("Arguments depuis la page d'acceuil");
    print(args);
    // Construction de l'interface utilisateur
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context); // Navigue vers la page précédente
          },
          icon: const Icon(
            Icons.arrow_back, // Icône de flèche de retour
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        //Un conteneur pour afficher les details du profil
        child: Container(
          width: MediaQuery.of(context).size.width, // Prend toute la largeur de l'écran
          margin: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.primary, // Couleur de la bordure
              width: 3,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // Aligne les enfants au début de la colonne
            children: [
              Container(
                height: 100,
                width: 100,
                padding: EdgeInsets.all(8), // Espace intérieur autour de l'avatar
                // Avatar de l'utilisateur
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primary, // Couleur de la bordure
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(100), // Bordure circulaire pour l'avatar
                ),
                child: Hero(
                  tag: args["image"],
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(args["image"]),
                    radius: 150,
                  ),
                ),
              ),
              Text(
                args["name"], // Affiche le nom de l'utilisateur
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                "Email de l'utilisateur",
                style: Theme.of(context).textTheme.bodyLarge, // Affiche l'email de l'utilisateur
              ),
            ],
          ),
        ),
      ),
    );
  }
}