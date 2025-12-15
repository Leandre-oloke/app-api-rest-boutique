import 'package:flutter/widgets.dart';
import 'package:app_api_rest_boutique/utils/theme_perso.dart';
import 'package:app_api_rest_boutique/page_acceuil.dart';
import 'package:app_api_rest_boutique/page_compteur.dart';




abstract class Routeur {
  static const String routeInitiale = '/page-compteur';
  static final Map<String, WidgetBuilder> routes = {

    "/page-compteur": (context) => const PageCompteur(),

    "/page-acceuil": (context) => const PageAcceuil(),
  };
}