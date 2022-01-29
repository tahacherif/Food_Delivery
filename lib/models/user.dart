class User {
  static const String  petitdej = 'petit dejeuner';
  static const String repas = 'repas';
  static const String diner = 'diner';
  static const String Sfax_ville = 'sfax ville';
  static const String Bonlieu = 'bonlieu';


  String prenom = '';
  String nom = '';
  Map<String, bool> passions = {
    petitdej: false,
    repas: false,
    diner: false,
  };

  Map<String, bool> lieu = {
    Sfax_ville: false,
    Bonlieu : false,
  };

  bool bulletin = false;

  save() {
    print('enregistrement des informations grâce à un service Web');
  }
}
