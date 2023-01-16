enum Subject {
  lv1,
  lv2,
  lv3,
  mathematics,
  physicsChemistry,
  biology,
  french,
  philosophy;

  @override
  String toString() {
    switch (this) {
      case Subject.mathematics:
        return "Mathématiques (Spé)";

      case Subject.physicsChemistry:
        return "Physique-Chimie (Spé)";

      case Subject.biology:
        return "Sciences et Vie de la Terre (Spé)";

      case Subject.french:
        return "Français (1ère)";

      case Subject.philosophy:
        return "Philosophie (T°)";

      default:
        return name;
    }
  }
}
