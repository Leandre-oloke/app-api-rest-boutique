// // import 'package:flutter/material.dart';

// // class EndDrawerPerso extends StatefulWidget {
// //   const EndDrawerPerso({super.key});

// //   @override
// //   State<EndDrawerPerso> createState() => _EnDrawerPersoState();
// // }
// // class _EnDrawerPersoState extends State<EndDrawerPerso> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Drawer(
// //       child: ListView(
// //         //padding: EdgeInsets.zero,
// //         children: [
// //          SizedBox(
// //           height: 120,
// //           child: DrawerHeader(
// //             decoration: BoxDecoration(
// //               color: Theme.of(context).colorScheme.primary,

// //             ),
// //            child: Text(
// //               'Menu de l\'application',
// //               style: TextStyle(
// //                 color: Colors.white,
// //                 fontSize: 24,
// //               ),
// //             ),
// //           ),
// //          )

// //         ]

            
// //           ),
// //           ListTile(
// //             leading: Icon(Icons.home),
// //             title: Text('Accueil'),
// //             onTap: () {
// //               Navigator.pushNamedAndRemoveUntil(context, "/page-acceuil", (predicate) => false);
// //             },
// //           ),
// //            Divider(
// //             color: Theme.of(context).colorScheme.tertiary, thickness: 2
// //           )
// //           ListTile(
// //             leading: Icon(Icons.person),
// //             tileColor: Theme.of(context).colorScheme.tertiary,
// //             title: Text("Details profil")
// //             onTap: () {
// //               Navigator.pushNamedAndRemoveUntil(context, "/page-details-profil", (predicate)=> false,) ;
// //             },
// //           ),
// //            Divider(color: Theme.of(context).colorScheme.tertiary, thickness: 2,) // 
// //         ],
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart'; // Import des widgets Material de Flutter

// // // Widget représentant un Drawer personnalisé avec état
// // class EndDrawerPerso extends StatefulWidget {
// //   const EndDrawerPerso({super.key}); // Constructeur avec clé optionnelle

// //   @override
// //   State<EndDrawerPerso> createState() => _EnDrawerPersoState(); // Création de l'état associé
// // }

// // // Classe qui gère l'état du Drawer
// // class _EnDrawerPersoState extends State<EndDrawerPerso> {
// //   @override
// //   Widget build(BuildContext context) {
// //     // Widget Drawer affiché généralement à droite (endDrawer)
// //     return Drawer(
// //       // Contenu principal du Drawer sous forme de liste déroulante
// //       child: ListView(
// //         // padding: EdgeInsets.zero, // Supprime l'espace par défaut (optionnel)
// //         children: [
// //           // Zone supérieure du Drawer (en-tête)
// //           SizedBox(
// //             height: 120, // Hauteur fixe de l'en-tête
// //             child: DrawerHeader(
// //               // Décoration graphique de l'en-tête
// //               decoration: BoxDecoration(
// //                 color: Theme.of(context).colorScheme.primary, // Couleur principale du thème
// //               ),

// //               // Texte affiché dans l'en-tête
// //               child: const Text(
// //                 'Menu de l\'application', // Titre du menu
// //                 style: TextStyle(
// //                   color: Colors.white, // Couleur du texte
// //                   fontSize: 24, // Taille du texte
// //                 ),
// //               ),
// //             ),
// //           ),

// //           // Élément de menu : Accueil
// //           ListTile(
// //             leading: const Icon(Icons.home), // Icône affichée à gauche
// //             title: const Text('Accueil'), // Texte du menu
// //             onTap: () {
// //               // Navigation vers la page d'accueil
// //               // Supprime toutes les pages précédentes de la pile
// //               Navigator.pushNamedAndRemoveUntil(
// //                 context,
// //                 "/page-acceuil", // Route de destination
// //                 (predicate) => false, // Supprime toutes les routes précédentes
// //               );
// //             },
// //           ),

// //           // Ligne de séparation visuelle
// //           Divider(
// //             color: Theme.of(context).colorScheme.tertiary, // Couleur du séparateur
// //             thickness: 2, // Épaisseur du séparateur
// //           ),

// //           // Élément de menu : Détails du profil
// //           ListTile(
// //             leading: const Icon(Icons.person), // Icône profil
// //             tileColor: Theme.of(context).colorScheme.tertiary, // Couleur de fond du tile
// //             title: const Text("Details profil"), // Texte du menu
// //             onTap: () {
// //               // Navigation vers la page des détails du profil
// //               Navigator.pushNamedAndRemoveUntil(
// //                 context,
// //                 "/page-details-profil", // Route de destination
// //                 (predicate) => false, // Supprime toutes les routes précédentes
// //               );
// //             },
// //           ),

// //           // Deuxième séparateur
// //           Divider(
// //             color: Theme.of(context).colorScheme.tertiary, // Couleur du séparateur
// //             thickness: 2, // Épaisseur du séparateur
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }


// // import 'package:flutter/material.dart';

// // end drawer
// // class EndDrawerPerso extends StatefulWidget {
// //   const EndDrawerPerso({super.key});

// //   @override
// //   State<EndDrawerPerso> createState() => _EndDrawerPersoState();
// // }

// // class _EndDrawerPersoState extends State<EndDrawerPerso> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Drawer(
// //       child: ListView(
// //         children: [
// //           SizedBox(
// //             height: 120,
// //             child: DrawerHeader(
// //               decoration: BoxDecoration(
// //                 color: Theme.of(context).colorScheme.primary,
// //               ),
// //               child: const Text("Menu"),
// //             ),
// //           ),

// //           ListTile(
// //             leading: const Icon(Icons.home),
// //             tileColor: Theme.of(context).colorScheme.tertiary,
// //             title: const Text("Acceuil"),
// //             onTap: () {
// //               Navigator.pushNamedAndRemoveUntil(
// //                 context,
// //                 "/page-acceuil",
// //                 (predicate) => false,
// //               );
// //             },
// //           ),

// //           Divider(
// //             color: Theme.of(context).colorScheme.tertiary,
// //             thickness: 2,
// //           ),

// //           ListTile(
// //             leading: const Icon(Icons.countertops),
// //             tileColor: Theme.of(context).colorScheme.tertiary,
// //             title: const Text("Compteur"),
// //             onTap: () {
// //               Navigator.pushNamedAndRemoveUntil(
// //                 context,
// //                 "/page-compteur",
// //                 (predicate) => false,
// //               );
// //             },
// //           ),

// //           Divider(
// //             color: Theme.of(context).colorScheme.tertiary,
// //             thickness: 2,
// //           ),

// //           ListTile(
// //             leading: const Icon(Icons.person),
// //             tileColor: Theme.of(context).colorScheme.tertiary,
// //             title: const Text("Détails profil"),
// //             onTap: () {
// //               Navigator.pushNamedAndRemoveUntil(
// //                 context,
// //                 "/page-details-profil",
// //                 (predicate) => false,
// //               );
// //             },
// //           ),

// //           Divider(
// //             color: Theme.of(context).colorScheme.tertiary,
// //             thickness: 2,
// //           ),

// //           ListTile(
// //             leading: const Icon(Icons.shop),
// //             tileColor: Theme.of(context).colorScheme.tertiary,
// //             title: const Text("Boutique"),
// //             onTap: () {
// //               Navigator.pushNamedAndRemoveUntil(
// //                 context,
// //                 "/page-boutique",
// //                 (predicate) => false,
// //               );
// //             },
// //           ),

// //           Divider(
// //             color: Theme.of(context).colorScheme.tertiary,
// //             thickness: 2,
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }


// import 'package:flutter/material.dart'; // Import du framework Material pour utiliser les widgets Flutter

// // Widget représentant un endDrawer personnalisé (menu latéral droit)
// class EndDrawerPerso extends StatefulWidget {
//   const EndDrawerPerso({super.key}); // Constructeur avec une clé optionnelle

//   @override
//   State<EndDrawerPerso> createState() => _EndDrawerPersoState(); // Associe le widget à son état
// }

// // Classe qui gère l'état du widget EndDrawerPerso
// class _EndDrawerPersoState extends State<EndDrawerPerso> {
//   @override
//   Widget build(BuildContext context) {
//     // Drawer : menu latéral affiché depuis la droite avec endDrawer
//     return Drawer(
//       // ListView permet de rendre le contenu scrollable si nécessaire
//       child: ListView(
//         children: [
//           // Zone supérieure du menu (en-tête)
//           SizedBox(
//             height: 120, // Définit la hauteur de l'en-tête
//             child: DrawerHeader(
//               // Décoration graphique de l'en-tête
//               decoration: BoxDecoration(
//                 color: Theme.of(context).colorScheme.primary, // Couleur principale du thème
//               ),
//               // Contenu affiché dans l'en-tête
//               child: const Text("Menu"), // Titre du menu
//             ),
//           ),

//           // Élément du menu : Accueil
//           ListTile(
//             leading: const Icon(Icons.home), // Icône affichée à gauche
//             tileColor: Theme.of(context).colorScheme.tertiary, // Couleur de fond de l'élément
//             title: const Text("Acceuil"), // Texte du menu
//             onTap: () {
//               // Navigation vers la page d'accueil
//               // Supprime toutes les routes précédentes de la pile
//               Navigator.pushNamedAndRemoveUntil(
//                 context,
//                 "/page-acceuil", // Nom de la route
//                 (predicate) => false, // Supprime toutes les routes précédentes
//               );
//             },
//           ),

//           // Séparateur visuel entre les éléments du menu
//           Divider(
//             color: Theme.of(context).colorScheme.tertiary, // Couleur du séparateur
//             thickness: 2, // Épaisseur du séparateur
//           ),

//           // Élément du menu : Compteur
//           ListTile(
//             leading: const Icon(Icons.countertops), // Icône compteur
//             tileColor: Theme.of(context).colorScheme.tertiary, // Couleur de fond
//             title: const Text("Compteur"), // Texte affiché
//             onTap: () {
//               // Navigation vers la page compteur
//               Navigator.pushNamedAndRemoveUntil(
//                 context,
//                 "/page-compteur", // Route cible
//                 (predicate) => false,
//               );
//             },
//           ),

//           // Séparateur
//           Divider(
//             color: Theme.of(context).colorScheme.tertiary,
//             thickness: 2,
//           ),

//           // Élément du menu : Détails du profil
//           ListTile(
//             leading: const Icon(Icons.person), // Icône profil utilisateur
//             tileColor: Theme.of(context).colorScheme.tertiary,
//             title: const Text("Détails profil"), // Texte du menu
//             onTap: () {
//               // Navigation vers la page de détails du profil
//               Navigator.pushNamedAndRemoveUntil(
//                 context,
//                 "/page-details-profil",
//                 (predicate) => false,
//               );
//             },
//           ),

//           // Séparateur
//           Divider(
//             color: Theme.of(context).colorScheme.tertiary,
//             thickness: 2,
//           ),

//           // Élément du menu : Boutique
//           ListTile(
//             leading: const Icon(Icons.shop), // Icône boutique
//             tileColor: Theme.of(context).colorScheme.tertiary,
//             title: const Text("Boutique"), // Texte affiché
//             onTap: () {
//               // Navigation vers la page boutique
//               Navigator.pushNamedAndRemoveUntil(
//                 context,
//                 "/page-boutique",
//                 (predicate) => false,
//               );
//             },
//           ),

//           // Dernier séparateur
//           Divider(
//             color: Theme.of(context).colorScheme.tertiary,
//             thickness: 2,
//           ),
//         ],
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart'; // Import du framework Material pour utiliser les widgets Flutter

class EndDrawerPerso extends StatefulWidget {
  const EndDrawerPerso({super.key}); // Constructeur avec une clé optionnelle

  @override
  State<EndDrawerPerso> createState() => _EndDrawerPersoState(); // Associe le widget à son état
}

class _EndDrawerPersoState extends State<EndDrawerPerso> {
  int selectedIndex = 0;  // Index de l'élément sélectionné dans le menu
  @override
  Widget build(BuildContext context) {
    // Drawer : menu latéral affiché depuis la droite avec endDrawer
    return Drawer(
      // ListView permet de rendre le contenu scrollable si nécessaire : ou permet de lister des éléments verticalement
      child: ListView(
        // Liste des éléments du menu
        children: [
          SizedBox(
            height: 120,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: const Text('Menu'),
            ),
          ),
             // ListeTile représente un élément cliquable dans une liste
          ListTile(
            leading: const Icon(Icons.home), // Icône affichée à gauche
            title: const Text('Accueil'),// Texte du menu
            selected: selectedIndex == 1, // Vérifie si cet élément est sélectionné
            selectedTileColor:
                const Color.fromARGB(255, 244, 215, 205), // Couleur de fond si sélectionné
            onTap: () {
              setState(() {
                selectedIndex = 1;
              });
              // Navigation vers la page d'accueil
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/page-acceuil',
                (predicate) => false,
              );
            },
          ),
           //Divider : ligne de séparation visuelle entre les éléments
          Divider(
            color: Theme.of(context).colorScheme.tertiary,
            thickness: 2,
          ),

          ListTile(
            leading: const Icon(Icons.countertops),
            title: const Text('Compteur'),
            selected: selectedIndex == 0,
            selectedTileColor:
                const Color.fromARGB(255, 244, 215, 205),
            onTap: () {
              setState(() {
                selectedIndex = 0;
              });
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/page-compteur',
                (predicate) => false,
              );
            },
          ),

          Divider(
            color: Theme.of(context).colorScheme.tertiary,
            thickness: 2,
          ),

          Divider(
            color: Theme.of(context).colorScheme.tertiary,
            thickness: 2,
          ),

          ListTile(
            leading: const Icon(Icons.shop),
            title: const Text("Boutique"),
            selected: selectedIndex == 3,
            selectedTileColor:
                const Color.fromARGB(255, 244, 215, 205),
            onTap: () {
              setState(() {
                selectedIndex = 3;
              });
              Navigator.pushNamedAndRemoveUntil(
                context,
                "/page-boutique",
                (predicate) => false,
              );
            },
          ),

          Divider(
            color: Theme.of(context).colorScheme.tertiary,
            thickness: 2,
          ),
        ],
      ),
    );
  }
}