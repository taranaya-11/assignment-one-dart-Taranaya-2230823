import 'dart:math';

void main() {
  List<String> students = ["Alice", "Bob", "Charlie", "Diana", "Eve"];
  Map<String, int> scores = {};
  Random rnd = Random();

  for (var name in students) {
    scores[name] = 60 + rnd.nextInt(41);
  }

  print("Scores: $scores");

  var highestEntry = scores.entries.reduce((a, b) => a.value >= b.value ? a : b);
  var lowestEntry = scores.entries.reduce((a, b) => a.value <= b.value ? a : b);
  double average = scores.values.reduce((a, b) => a + b) / scores.length;
  print("Highest: ${highestEntry.key} -> ${highestEntry.value}");
  print("Lowest: ${lowestEntry.key} -> ${lowestEntry.value}");
  print("Average: ${average.toStringAsFixed(2)}");


  for (var entry in scores.entries) {
    String category;
    switch (entry.value ~/ 10) {
      case 10:
      case 9:
        category = "Excellent";
        break;
      case 8:
        category = "Good";
        break;
      case 7:
        category = "Average";
        break;
      default:
        category = "Needs Improvement";
    }
    print("${entry.key}: ${entry.value} -> $category");
  }
}
