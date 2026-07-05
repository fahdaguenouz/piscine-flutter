void main() {
	print(optionalSum(1, 2));
	print(optionalSum(1, 2, 3));
}

int optionalSum(int a, int b, [int c = 0]) {
  return a + b + c;
}