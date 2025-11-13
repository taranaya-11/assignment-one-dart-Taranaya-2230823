void main() {
  String name = "John Doe";
  int age = 25;
  double height = 5.9; // for display
  bool isStudent = true;
  print("Name: $name, Age: $age, Height: $height, Is Student: $isStudent");
  double weightKg = 70.0;
  double heightMeters = 1.76; // example
  double bmi = calculateBMI(weightKg, heightMeters);
  print("BMI: ${bmi.toStringAsFixed(1)}");

  int score = 85;
  print("Grade: ${getGrade(score)}");
}

double calculateBMI(double weight, double height) {
  return weight / (height * height);
}

String getGrade(int score) {
  if (score >= 90 && score <= 100) return "A";
  else if (score >= 80) return "B";
  else if (score >= 70) return "C";
  else if (score >= 60) return "D";
  else return "F";
}
