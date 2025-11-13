class BankAccount {
  String accountNumber;
  String accountHolder;
  double balance;
  String accountType;

  BankAccount(this.accountNumber, this.accountHolder, this.accountType)
      : balance = 0.0;

  void deposit(double amount) {
    if (amount <= 0) return;
    balance += amount;
    print("$amount deposited to account $accountNumber. New balance: $balance");
  }

  void withdraw(double amount) {
    if (amount <= 0) return;
    if (amount <= balance) {
      balance -= amount;
      print("$amount withdrawn from account $accountNumber. New balance: $balance");
    } else {
      print("Insufficient funds for withdrawal of $amount from account $accountNumber");
    }
  }

  double getBalance() => balance;

  void displayAccountInfo() {
    print("Account: $accountNumber, Holder: $accountHolder, Type: $accountType, Balance: $balance");
  }
}

void main() {
  var acc1 = BankAccount("12345", "Alice", "Savings");
  var acc2 = BankAccount("67890", "Bob", "Checking");
  var acc3 = BankAccount("11121", "Charlie", "Savings");

  acc1.deposit(1500.0);
  acc2.deposit(800.0);
  acc3.deposit(300.0);

  acc2.withdraw(1000.0); // insufficient
  acc1.withdraw(200.0);

  acc1.displayAccountInfo();
  acc2.displayAccountInfo();
  acc3.displayAccountInfo();
}

