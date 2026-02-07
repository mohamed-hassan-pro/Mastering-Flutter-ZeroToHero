/*
Q7. Object Interaction
- Create a class Account with attributes owner and balance.
- Add methods deposit(amount) and withdraw(amount).
- In main(), create an account, deposit 500, withdraw 200, and print the final balance.
*/
void main() {
  Account office = Account('Mohamed', 1000);
  office.deposit(500);
  office.withdraw(200);
  print('Balance: ${office.balance}');
}

class Account {
  String owner;
  double balance;

  Account(this.owner, this.balance);

  double deposit(double amount) {
    balance += amount;
    return balance;
  }

  double withdraw(double amount) {
    balance -= amount;
    return balance;
  }
}
