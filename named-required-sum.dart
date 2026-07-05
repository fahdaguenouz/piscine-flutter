void main() {
  print(namedRequiredSum(first: 1, second: 2, third: 3)); 
}

int namedRequiredSum ({required int first, required int second, required int third}) {
  return first + second + third;
}