/// Fraction of format "([nominator]/[denominator]) * [coefficient]"
class Grade {
  double nominator;
  double denominator;
  double coefficient;

  Grade({
    required this.nominator,
    required this.denominator,
    required this.coefficient,
  });

  Grade transform(double newDenominator) {
    final newGrade = nominator * denominator / newDenominator;
    return Grade(
      nominator: newGrade,
      denominator: newDenominator,
      coefficient: coefficient,
    );
  }

  void changeCoefficient(double coefficient) {
    this.coefficient = coefficient;
  }

  @override
  String toString() {
    return "$nominator/$denominator";
  }
}
