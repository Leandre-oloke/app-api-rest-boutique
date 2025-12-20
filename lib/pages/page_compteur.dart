
import 'package:app_api_rest_boutique/components/end_drawer_perso.dart';
import 'package:flutter/material.dart';

class PageCompteur extends StatefulWidget {
  @override
  State<PageCompteur> createState() => _PageCompteurState();
}

class _PageCompteurState extends State<PageCompteur> {
  int _compteur = 0;

//  la méthode build est appelée à chaque fois que le widget doit être reconstruit
  @override
  Widget build(BuildContext context) {
    print("Rebuild");
    return Scaffold(
      endDrawer: EndDrawerPerso(), // Ajout du drawer personnalisé
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        title: const Text("Page Compteur"),
      ),
      //le corps de la page
      body: Center(
        child: SafeArea(
          top: true,
          bottom: true,
          child: Container(
            margin: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              border: Border.all(
                color: Theme.of(context).colorScheme.primary,
                width: 3,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(10)), // coins arrondis
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,// les éléments sont centrés verticalement
              mainAxisSize: MainAxisSize.max, // la colonne prend toute la hauteur disponible
              children: [
                Text(
                  "valeur : ",
                  style: Theme.of(context).textTheme.titleLarge, // style de texte personnalisé
                ),
                Text(
                  "$_compteur",
                  style: Theme.of(context).textTheme.titleMedium, // style de texte personnalisé
                ),
                Text(
                  "Clicker sur le bouton pour incrémenter le compteur",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ),
      ),
      // Bouton flottant pour incrémenter le compteur
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("La valeur du compteur est : $_compteur");
          setState(() {
            _compteur++;
          });
        },
        child: const Icon(Icons.add), // Icône du bouton
      ),
    );
  }
}




// un stateful widget serait plus approprié pour gérer l'état du compteur
// un stateful widget est constitué de deux classes : la classe du widget et la classe de l'état
// la methode setState() permet de notifier le framework qu'un changement d'état a eu lieu et qu'il faut reconstruire l'interface utilisateur
// autrement dit, setState() déclenche un appel à la méthode build() du widget pour refléter les changements d'état dans l'interface utilisateur