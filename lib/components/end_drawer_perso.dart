
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