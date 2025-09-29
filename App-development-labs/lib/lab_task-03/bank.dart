class BankAccount {
  double _balance = 0; // private field (starts with underscore)

  // Getter to check balance
  double get balance => _balance;

  // Setter to deposit money (reject deposits < 100)
  set deposit(double amount) {
    if (amount >= 100) {
      _balance += amount;
      print("Deposit successful: $amount");
    } else {
      print("Deposit failed: Minimum deposit is 100");
    }
  }

  // Method to withdraw money
  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
      print("Withdrawal successful: $amount");
    } else {
      print("Withdrawal failed: Insufficient balance");
    }
  }
}

void main() {
  BankAccount account = BankAccount();

  print("Initial Balance: ${account.balance}");

  // Test deposits
  account.deposit = 50; // should fail
  account.deposit = 200; // should succeed

  print("Balance after deposit: ${account.balance}");

  // Test withdrawals
  account.withdraw(50); // should succeed
  account.withdraw(200); // should fail (not enough balance)

  print("Final Balance: ${account.balance}");
}
