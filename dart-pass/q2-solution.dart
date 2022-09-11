class Account {
  int _accountNo;
  String _name;
  String _dateOfBirth;
  double _amount;
  DateTime _dateCreated;

  Account.insert(
    this._accountNo,
    this._name,
    this._dateOfBirth,
    this._amount,
    this._dateCreated,
  );

  @override
  String toString() => "{AccountNo: $_accountNo, Name: $_name, DateOfBirth: $_dateOfBirth. Amount: $_amount, DateCreated: $_dateCreated}";

  double get checkBalance => double.parse(_amount.toStringAsFixed(2));

  void deposit(double money){
  	if (money > 0){
  		_amount += double.parse(money.toStringAsFixed(2));
  		print("You have added $money to your account. Your balance now is $_amount");
  	} else {
  		print("Invalide amount of money");
  	}
  }

  void withdraw(double money){
  	if(money <= _amount){
  		_amount = _amount - money;
  		_amount = double.parse(_amount.toStringAsFixed(2));
  		print("You have withdrew $money from your account. Your balance now is $_amount");
  	} else {
  		print("No enough balance in the account.");
  	}
  }

}

void main() {
  Account accountNo1 =
      Account.insert(1, "Ali Waseem", "2/7/1995", 149.99, DateTime.now());
  print(accountNo1.toString());
  print("-------");
  print("Your balance is ${accountNo1.checkBalance}");
  accountNo1.deposit(50);
  accountNo1.withdraw(99.99);

  print("-------");
  Account accountNo2 =
      Account.insert(2, "Mohammed", "1/1/2000", 0.0, DateTime.now());
  print(accountNo2.toString());

  print("-------");
  Account accountNo3 =
      Account.insert(3, "Noor", "4/5/1996", 44, DateTime.now());
  print(accountNo3.toString());

  print("-------");
  print("finished");
}
