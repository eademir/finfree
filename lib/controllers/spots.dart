class Spots {
  final double c;
  final double d;

  Spots({this.c, this.d});

  factory Spots.fromJSON(Map<String, dynamic> json) {
    return Spots(
      c: json['c'].toDouble(),
      d: json['d'].toDouble(),
    );
  }
}
