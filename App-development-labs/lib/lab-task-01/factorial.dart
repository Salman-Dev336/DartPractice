int factorial(int n) {
  if (n < 0) throw ArgumentError('Negative numbers are not allowed');
  int result = 1;
  for (int i = 1; i <= n; i++) {
    result *= i;
  }
  return result;
}
void main(){
 print(factorial(5));
 print(factorial(0));
 }