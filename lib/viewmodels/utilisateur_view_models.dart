import 'package:app_api_rest_boutique/components/models/utilisateur_model.dart';
import 'package:app_api_rest_boutique/services/api_services.dart';

class UtilisateurViewModel {
  final ApiServices api;

  UtilisateurViewModel(this.api);

  List<UtilisateurModel> utilisateurs = [];

  bool isLoading = false;
  String? erreur;

  Future<void> chargerUtilisateurs() async {
    isLoading = true;
    erreur = null;

    try {
      final result = await api.getData(
        "https://jsonplaceholder.typicode.com/users",
      );

      final List<Map<String, dynamic>> utilisateursEnListMapString =
          List<Map<String, dynamic>>.from(result);

      utilisateurs = utilisateursEnListMapString.map((value) {
        return UtilisateurModel.fromMap(Map<String, dynamic>.from(result));
      }).toList();
    } catch (e) {
      erreur = e.toString();
    } finally {}
  }
}