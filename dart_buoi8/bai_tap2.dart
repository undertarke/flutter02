void main() {
  var bankAccount = BankAccount(1, "tony", 0);
  bankAccount.soDu();

  bankAccount.guiTien(10);
  bankAccount.guiTien(10);
  bankAccount.guiTien(10);
  bankAccount.soDu();

  bankAccount.rutTien(50);
}

class BankAccount {
  var accountNumber;
  var ownerName;
  var balance;
  BankAccount(this.accountNumber, this.ownerName, this.balance);

  void guiTien(money) {
    this.balance += money; // ?????
  }

  void rutTien(money) {
    if (this.balance - money >= 0)
      this.balance -= money;
    else
      print("Số dư không đủ");

    print("Số dư: ${this.balance}");
  }

  void soDu() {
    print("${this.ownerName} , Số dư: ${this.balance}");
  }
}
