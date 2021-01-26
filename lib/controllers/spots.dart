class Spots {
  final double c;
  final double d;

  Spots({this.c, this.d});
  //it's picking c and d values from decoded json objects
  factory Spots.fromJSON(Map<String, dynamic> json) {
    return Spots(
      c: json['c'].toDouble(),
      d: json['d'].toDouble(),
    );
  }
}
