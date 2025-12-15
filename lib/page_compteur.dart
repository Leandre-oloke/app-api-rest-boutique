import 'package:app_api_rest_boutique/components/end_drawer_perso.dart';
import 'package:flutter/material.dart';

class PageCompteur extends StatelessWidget {
  const PageCompteur ({super.key});

  @override
  Widget build(BuildContext context) {
    int _compteur = 0;
    return Scaffold(
      endDrawer: EndDrawerPerso(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        title: Text(
          'Page Compteur',
        ),
      ),
      body: Center(
        child: Container(
         margin: EdgeInsets.all(16.0),
         width: MediaQuery.of(context).size.width * 0.8,
         decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade400,
            width: 3.0,
          ),
           color: Colors.grey.shade200,
           borderRadius: BorderRadius.circular(12.0),
          
         ),

         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [

            Text("valeur du compteur : ",
            style: Theme.of(context).textTheme.titleLarge,
            ),
            Text("$_compteur",
            style: Theme.of(context).textTheme.titleMedium,
            ),
            Text("Appuyez sur le bouton pour incrémenter le compteur",)

          ],
         ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         // print("vous avez appuyé sur le bouton");
          // Incrémenter le compteur
          _compteur++;
         // print("La valeur du compteur est : $_compteur");
          // Mettre à jour l'interface utilisateur
          (context as Element).markNeedsBuild();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

// un stateful widget serait plus approprié pour gérer l'état du compteur
// un stateful widget est constitué de deux classes : la classe du widget et la classe de l'état
// la methode setState() permet de notifier le framework qu'un changement d'état a eu lieu et qu'il faut reconstruire l'interface utilisateur
// autrement dit, setState() déclenche un appel à la méthode build() du widget pour refléter les changements d'état dans l'interface utilisateur