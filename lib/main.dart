import 'package:app_api_rest_boutique/page_acceuil.dart';
import 'package:app_api_rest_boutique/utils/app_constans.dart';
import 'package:flutter/material.dart';
import 'package:app_api_rest_boutique/page_compteur.dart';
import 'package:app_api_rest_boutique/utils/routeur.dart';
import 'package:app_api_rest_boutique/utils/theme_perso.dart';

import 'package:flutter/material.dart';
import 'utils/theme_perso.dart';
import 'utils/routeur.dart';
import 'page_compteur.dart';

void main() {
  runApp(MonAppli());
}

class MonAppli extends StatelessWidget {
  const MonAppli({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: AppConstans.nomDeApplication,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme:ThemePerso.modeclair,//attribut theme pour le mode clair
      darkTheme: ThemePerso.modesombre,//attribut theme pour le mode sombre
      initialRoute: Routeur.routeInitiale,
      onUnknownRoute: (settings) => MaterialPageRoute( builder: (context) => PageAcceuil()),
      routes: Routeur.routes,

    );
  }



  // n8n : https://n8n.io/  (outil d'automatisation de flux de travail open-source)
}