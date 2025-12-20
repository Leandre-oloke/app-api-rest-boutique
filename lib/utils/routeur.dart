import 'package:flutter/widgets.dart';
import 'package:app_api_rest_boutique/utils/theme_perso.dart';
import 'package:app_api_rest_boutique/pages/page_acceuil.dart';
import 'package:app_api_rest_boutique/pages/page_compteur.dart';
import 'package:app_api_rest_boutique/pages/page_details_profil.dart';
import 'package:app_api_rest_boutique/pages/page_boutique.dart';


abstract class Routeur {
  static const String routeInitiale = '/page-compteur';
  static final Map<String, WidgetBuilder> routes = {

    "/page-compteur": (context) => const PageCompteur(),

    "/page-acceuil": (context) => const PageAcceuil(),
    "/page-details-profil": (context) => PageDetailsProfil(),
    "/page-boutique": (context) => PageBoutique(),
  };
}