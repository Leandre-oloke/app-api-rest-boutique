import 'package:flutter/material.dart';

// SARARI Tech : à chercher

// Classe abstraite pour définir les thèmes personnalisés

// abstract class ThemePerso {
//   static final modeclair = ThemeData(
//     colorScheme : ColorScheme.fromSeed(
//       seedColor: Colors.deepPurple,
//       primary: Colors.pink,
//       secondary: Colors.pink.shade800,
//       tertiary: Colors.amber,
//       error: Colors.red,
//     ),
//     useMaterial3: true, //activation de Material 3 : couleur de base de toutes les pages
//     appBarTheme: AppBarTheme(
//       backgroundColor: Colors.green,
//       foregroundColor: Colors.white,
//       centerTitle: true,
//     ),
   
//     textTheme: TextTheme(
//       titleLarge: TextStyle(
//         fontSize: 24,
//         fontWeight: FontWeight.bold,
//         color: Colors.black, // Couleur personnalisée pour le mode clair
//       ),
//       titleMedium: TextStyle(
//         fontSize: 20,
//         fontWeight: FontWeight.w600,
//         color: Colors.blueGrey,
//       ),
//       headlineLarge: TextStyle(
//         fontSize: 32,
//         fontWeight: FontWeight.bold,
//         color: Colors.deepPurple,
//       ),
//       headlineMedium: TextStyle(
//         fontSize: 28,
//         fontWeight: FontWeight.w600,
//         color: Colors.deepPurple.shade700,
//       ),
//       bodyLarge: TextStyle(
//         fontSize: 16,
//         color: Colors.black87,
//       ),
//       bodyMedium: TextStyle(
//         fontSize: 14,
//         color: Colors.black54,
//       ),
//       bodySmall: TextStyle(
//         fontSize: 12,
//         color: Colors.black45,
//       ),
//     )
      
//   );

//   static final modeSombre = ThemeData(

//     colorScheme : ColorScheme.fromSeed(
//       seedColor: Colors.black,
//       primary: Colors.pink.shade200,
//       secondary: Colors.pink.shade400,
//       tertiary: Colors.amber.shade200,
//       error: Colors.red.shade400,
//       brightness: Brightness.dark,
//     ),
//     useMaterial3: true, //activation de Material 3
//     appBarTheme: AppBarTheme(
//       backgroundColor: Colors.black87,
//       foregroundColor: Colors.white,
//       centerTitle: true,
//     ),
   
//     textTheme: TextTheme(
//       titleLarge: TextStyle(
//         fontSize: 24,
//         fontWeight: FontWeight.bold,
//         color: Colors.white, // Couleur personnalisée pour le mode sombre
//       ),
//       titleMedium: TextStyle(
//         fontSize: 20,
//         fontWeight: FontWeight.w600,
//         color: Colors.blueGrey.shade200,
//       ),
//       headlineLarge: TextStyle(
//         fontSize: 32,
//         fontWeight: FontWeight.bold,
//         color: Colors.deepPurple.shade200,
//       ),
//       headlineMedium: TextStyle(
//         fontSize: 28,
//         fontWeight: FontWeight.w600,
//         color: Colors.deepPurple.shade100,
//       ),
//       bodyLarge: TextStyle(
//         fontSize: 16,
//         color: Colors.white70,
//       ),
//       bodyMedium: TextStyle(
//         fontSize: 14,
//         color: Colors.white60,
//       ),
//       bodySmall: TextStyle(
//         fontSize: 12,
//         color: Colors.white54,
//       ),
//     )
//   );
   

// }

//on ne veux pas instancier des objet. c'aest pourquoi on met abstract
import 'package:flutter/material.dart';

abstract class ThemePerso {
  //ThemeData: definition des couleurs de base. style de texte et styles de widgets
  static final modeclair = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.white, //Couleur de base utilisée pour générer automatiquement d’autres couleurs. ICI, la couleur de l'arriere plan
      primary: const Color.fromARGB(255, 133, 227, 211), //couleur principale
      secondary: const Color.fromARGB(255, 227, 151, 176),//couleure secondaire
      tertiary: Colors.amber,//troisieme couleur
      error: Colors.red,//couleur d'erreur
    ),
    useMaterial3: true, //pour utiliser des couleurs plus fluides
    
    //couleur de base de toutes les appbar
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.green,//couleur de fond de l'appbar
      foregroundColor: Colors.white,//tous ce qui est a l'interieur de l'appbar
      centerTitle: true, //titre centre par defaut
    ),

    //Style pour les textes
    textTheme: TextTheme(
      //pour les titres. Ils sont conçus pour les titres internes aux composants(ex: ListTile.title)
      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold, //car titre
        color: Colors.black,
      ),
      //pour les titres moins importants que les sous-titres
      titleSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      //pour les sous-titres
      titleMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),

      //pour les grands titres(structure de l'ecran)
      headlineLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      headlineMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      headlineSmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),

      //pour les paragraphes
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),

      //pour les petits textes qui ne sont pas des paragraphes(ex: boutons/actions)
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.black,  
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      labelSmall: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
  );

  static final modesombre = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.black, //couleur de l'arriere plan
      primary: Colors.pink,
      secondary: const Color.fromARGB(255, 227, 151, 176),
      tertiary: Colors.amber,
      error: Colors.red,
    ),
    useMaterial3: true, //pour utiliser des couleurs plus fluides
    
    //Style pour les textes
    textTheme: TextTheme(
      //pour les titres. Ils sont conçus pour les titres internes aux composants(ex: ListTile.title)
      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold, //car titre
       color: Colors.white
      ),
      //pour les titres moins importants que les sous-titres
      titleSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
       color: Colors.white
      ),
      //pour les sous-titres
      titleMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
       color: Colors.white
      ),

      //pour les grands titres(structure de l'ecran)
      headlineLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
       color: Colors.white
      ),
      headlineMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
       color: Colors.white
      ),
      headlineSmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
       color: Colors.white
      ),

      //pour les paragraphes
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
       color: Colors.white
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
       color: Colors.white
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
       color: Colors.white
      ),

      //pour les petits textes qui ne sont pas des paragraphes(ex: boutons/actions)
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
       color: Colors.white  
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
       color: Colors.white
      ),
      labelSmall: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.bold,
       color: Colors.white
      ),
    ),
    
  );
}
