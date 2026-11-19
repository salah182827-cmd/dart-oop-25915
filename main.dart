class BusCard {
  String _owner = 'Mohamed abdalrahman mohamed IBRAHIM';
  int _balance = 0;

  BusCard(String owner, int balance) {
    _owner = owner;
    _balance = balance;
  }

  String get owner {
    return _owner;
  }

  
  int get balance {
    return _balance;
  }

  set owner(String newName) {
    if (newName.length < 3) {
      print('Error: name too short');
    } else {
      _owner = newName;
    }
  }

  void showInfo() {
    print('Owner: $_owner | Balance: $_balance RWF');
  }

 
  void topUp(int amount) {
    if (amount >= 500 && amount <= 50000) {
      _balance = _balance + amount;
      print('Topped up $amount RWF');
    } else {
      print('Error: top-up must be 500 to 50000 RWF');
    }
  }

  void pay(int fare) {
    if (fare > _balance) {
      print('Card declined');
    } else {
      _balance = _balance - fare;
      print('Paid $fare RWF');
    }
  }
}


class StudentCard extends BusCard {
  int _discount = 0;

  StudentCard(String owner, int balance, int discount) : super(owner, balance) {
    _discount = discount;
  }

  @override
  void showInfo() {
    super.showInfo();
    print('Student card: $_discount% off');
  }

 
  @override
  void pay(int fare) {
    int off = fare * _discount ~/ 100;
    print('Student discount: $off RWF');
    super.pay(fare - off);
  }
}

void main() {
  

  int myStartingBalance = 1150; 
  int myBusFare = 215; 
  int myDiscount = 15;

  BusCard card = BusCard('Mohamed abdalraman mohamed IBRAHIM', myStartingBalance); 
  card.owner = 'Mohamed abdalrahman mohamed IBRAHIM'; 
  card.showInfo();

  card.owner = 'Mohamed abdalrahman mohamed IBRAHIM';
  card.showInfo();

  card.topUp(100);
  card.topUp(2000);

  card.pay(myBusFare);
  card.pay(myBusFare);
  card.showInfo();

  StudentCard student = StudentCard('Mohamed abdalrahman mohamed IBRAHIM', myStartingBalance, myDiscount);

 
  student.pay(myBusFare);
  student.showInfo();
}