class Location {
  const Location(this.coordinates);

  Location.empty() : this([3.69, 3.69]);

  final List<double> coordinates;
}
