class OverdraftException implements Exception {
  String errorMessage() => 'Withdrawal amount exceeds account balance.';
}

class BankAccount {
  double _balance = 0;

  BankAccount(double initialBalance) {
    if (initialBalance < 0) {
      throw ArgumentError('Initial balance cannot be negative.');
    }
    _balance = initialBalance;
  }

  void deposit(double amount) {
    if (amount < 0) {
      throw ArgumentError('Deposit amount cannot be negative.');
    }
    _balance += amount;
    print('Deposited: $amount');
    print('Current Balance: $_balance');
  }

  void withdraw(double amount) {
    if (amount < 0) {
      throw ArgumentError('Withdrawal amount cannot be negative.');
    }
    if (_balance < amount) {
      throw OverdraftException();
    }
    _balance -= amount;
    print('Withdrawn: $amount');
    print('Current Balance: $_balance');
  }

  double getBalance() {
    return _balance;
  }
}

void main() {
  try {
    BankAccount account = BankAccount(3000);
    print('Initial Balance: ${account.getBalance()}');

    account.deposit(1000);
    account.withdraw(2000);
    account.withdraw(3000);
  } catch (e) {
    print('Exception occurred: $e');
  }
}
