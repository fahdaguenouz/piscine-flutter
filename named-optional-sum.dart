// void main() {
//   print(namedOptionalSum(first: 1, second: 2, third: 3));
//   print(namedOptionalSum(first: 1, third: 3));
//   print(namedOptionalSum()); 
// }
int namedOptionalSum({int first = 0, int second = 0, int third = 0}) {
  return first + second + third;
}

// int namedOptionalSum({int? first, int? second, int? third}) {
//   return (first ?? 0) + (second ?? 0) + (third ?? 0);
// }