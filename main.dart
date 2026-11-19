class BusCard {
  String _owner = '';
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

  StudentCard(String owner, int balance, int discount)
      : super(owner, balance) {
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
  // My numbers
  int D = 15;
  int L = 5;

  int startingBalance = 1000 + (D * 10);
  int busFare = 200 + D;
  int discount = 10 + L;

  print('Starting balance: $startingBalance RWF');
  print('Bus fare: $busFare RWF');
  print('Student discount: $discount%');

  // Create a card
  BusCard card = BusCard('Mohamed abdalrahman mohamed IBRAHIM', startingBalance);

  card.owner = 'Al';
  card.showInfo();

  // TODO 5
  card.owner = 'Mohamed abdalrahman mohamed IBRAHIM';
  card.showInfo();

  // TODO 6
  card.topUp(100);
  card.topUp(2000);

  // TODO 7
  card.pay(busFare);
  card.pay(busFare);
  card.showInfo();

  // TODO 8
  StudentCard studentCard =
      StudentCard('Mohamed abdalrahman mohamed IBRAHIM', startingBalance, discount);

  // TODO 9
  studentCard.pay(busFare);
  studentCard.showInfo();
}