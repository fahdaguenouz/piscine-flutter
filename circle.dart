const double pi = 3.14;

class Circle {
  double x;
  double y;
  double radius;

  Circle(this.x, this.y, this.radius);

  double get area => pi * radius * radius;
  double get perimeter => 2 * pi * radius;
  double get rightMostCoordinate => x + radius;
  double get leftMostCoordinate => x - radius;
  double get highestCoordinate => y + radius;
  double get lowestCoordinate => y - radius;
}