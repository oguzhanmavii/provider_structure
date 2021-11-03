class Glitch {
  String mesaj;

  Glitch({
    this.mesaj,
  });

  @override
  String toString() => 'Glitch(mesaj: $mesaj)';

  @override
  bool operator ==(Object object) {
    if (identical(this, object)) return true;

    return object is Glitch && object.mesaj == mesaj;
  }

  @override
  int get hashCode => mesaj.hashCode;
}
