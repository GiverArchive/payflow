void main() {
  Minhoca minhoca = Minhoca(name: "Banana", desc: "Seal minhoca");
  printMinhoca(minhoca);
}

void printMinhoca(Minhoca minhoca) {
  print("Minhoca " + minhoca.name);
  print("The minhoca " + minhoca.desc);
}

class Minhoca {
  String name;
  String desc;

  Minhoca({required this.name, required this.desc});
}
