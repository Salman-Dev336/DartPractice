class ComplexNumber {
  int real;
  int imaginary;

  ComplexNumber(this.real, this.imaginary);

  // Overload+ operator
  ComplexNumber operator +(ComplexNumber other) {
    return ComplexNumber(
      this.real + other.real,
      this.imaginary + other.imaginary,
    );
  }

  String toString() {
    return "$real + ${imaginary}i";
  }
}

void main() {
  ComplexNumber c1 = ComplexNumber(3, 4);
  ComplexNumber c2 = ComplexNumber(2, 5);

  ComplexNumber sum = c1 + c2;

  print("(${c1.toString()}) + (${c2.toString()}) = ${sum.toString()}");
}
