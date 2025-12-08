List<double> convertToF(List<double> temperaturesInC) {
  List<double> result = [];
  for (double i in temperaturesInC) {
    double index = ((i * 9) / 5) + 32;
    result.add(double.parse(index.toStringAsFixed(2)));
  }
  return result;
}
