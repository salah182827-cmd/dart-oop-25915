# Dart OOP Assignment: Kigali Bus Card

**Name:** Mohamed abdalrahman mohamed IBRAHIM

**Student ID:** 25915

## My numbers

- D = 15
- L = 5
- Starting balance = 1240 RWF
- Bus fare = 224 RWF
- Student discount = 14%

## Output of main.dart

```text
Starting balance: 1240 RWF
Bus fare: 224 RWF
Student discount: 14%
Error: name too short
Owner: Mohamed abdalrahman mohamed IBRAHIM | Balance: 1240 RWF
Owner: Mohamed abdalrahman mohamed IBRAHIM | Balance: 1240 RWF
Error: top-up must be 500 to 50000 RWF
Topped up 2000 RWF
Paid 224 RWF
Paid 224 RWF
Owner: Mohamed abdalrahman mohamed IBRAHIM | Balance: 2792 RWF
Student discount: 31 RWF
Paid 193 RWF
Owner: Mohamed abdalrahman mohamed IBRAHIM | Balance: 1047 RWF
Student card: 14% off
```

## Part 1: Why no setter for balance?

There is no setter for balance because the balance should not be changed directly. It should only change through methods like topUp() and pay(). This prevents invalid balance changes and keeps the card secure.

## Part 2: What does ~/ do?

The ~/ operator performs integer division. It returns a whole number without the decimal part.

For example:
- 237 * 17 / 100 = 40.29
- 237 * 17 ~/ 100 = 40

## Part 4: Bug table

| Bug | The line | Why it is wrong | Your fix |
|---|---|---|---|
| 1 | String _brand; int _battery; | Fields have no initial values | Initialize fields |
| 2 | SmartPhone constructor | Parent constructor is not called | Add super(brand, battery) |
| 3 | @override restart() | Parent has no restart method | Add restart() to Phone |
| 4 | p.battery = 100 | No setter exists | Add battery setter |
| 5 | print(p.battery()) | Getter is not a method | Use p.battery |

**Not a bug:**

Phone p = new Phone('Tecno', 50);

This line is correct because the new keyword is allowed in Dart.

## Part 5

**My prediction:**
```text
1
5
```

**Real output:**
```text
1
5
```

**Was I right?**

Yes, my prediction was correct because the negative value was rejected by the setter, and BigBag.add() calls the parent add() method twice.