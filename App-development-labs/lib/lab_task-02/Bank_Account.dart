class BankAccount {
  // Private attributes
  int _accountNumber;
  double _balance;

  // Constructor
  BankAccount(this._accountNumber, this._balance);

  // Method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposit: $amount into Account $_accountNumber');
    } else {
      print('Invalid deposit amount');
    }
  }

  // Method to withdraw money
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('Withdraw: $amount from Account $_accountNumber');
    } else {
      print('Insufficient balance or invalid amount');
    }
  }

  // Method to check balance
  double getBalance() {
    return _balance;
  }
}

void main() {
  // Create BankAccount object
  BankAccount account = BankAccount(12345, 0);

  // Perform operations
  account.deposit(5000);
  account.withdraw(2000);
  print('Remaining Balance in Account 12345: ${account.getBalance()}');
}
