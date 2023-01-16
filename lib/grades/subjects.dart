enum Subject {
  emc,
  eps,
  es,
  french,
  geography,
  hggsp,
  hida,
  history,
  hlp,
  lv1,
  lv2,
  ses,
  nsi,
  mathematics,
  philosophy,
  physics,
  svt;

  // List<Subject> toList() {
  //   return [];
  // }

  @override
  String toString() {
    switch (this) {
      case Subject.emc:
        return "Enseignement morale et civique";

      case Subject.eps:
        return "Education physique et sportive";

      case Subject.es:
        return "Enseignement scientifique";

      case Subject.french:
        return "Français (1ère)";

      case Subject.geography:
        return "Géographie";

      case Subject.hggsp:
        return "Histoire Géographie Géopolitique Sciences Politiques (Spé)";

      case Subject.hida:
        return "Histoire de l'art (Spé)";

      case Subject.history:
        return "Histoire";

      case Subject.hlp:
        return "Humanité Littérature Philosophie (Spé)";

      case Subject.lv1:
        return "LV1";

      case Subject.lv2:
        return "LV2";

      case Subject.ses:
        return "Sciences économiques et sociales (Spé)";

      case Subject.nsi:
        return "Numérique et sciences informatiques (Spé)";

      case Subject.mathematics:
        return "Mathématiques (Spé)";

      case Subject.philosophy:
        return "Philosophie (T°)";

      case Subject.physics:
        return "Physique-Chimie (Spé)";

      case Subject.svt:
        return "Sciences de la vie et de la Terre (Spé)";

      default:
        return name;
    }
  }
}
