class Coinstack {
  List<int> coinValue;
  int result = 0;

  Coinstack(this.coinValue) {
    for (int value in coinValue) {
      result += value;
    }
  }
  bool operator <(Coinstack other) {
    return result < other.result;
  }

  bool operator >(Coinstack other) {
    return result > other.result;
  }


  bool operator >=(Coinstack other) {
    return result >= other.result;
  }

  bool operator <=(Coinstack other) {
    return result <= other.result;
  }

  @override
  bool operator ==(Object other) {
    if (other is! Coinstack) {
      return false;
    }
    return result == other.result;
  }
  // überschreiben der hashCode-Methode, um sicherzustellen, dass Objekte mit demselben Ergebnis denselben Hashcode haben
  @override
  int get hashCode => result.hashCode;

  Coinstack operator +(Coinstack other) {
    List<int> newCoinValue = List<int>.from(coinValue);
    newCoinValue.addAll(other.coinValue);

    return Coinstack(newCoinValue);
  }

  Coinstack? operator -(Coinstack other) {
    List<int> newCoinValue = List<int>.from(coinValue);

    for (int value in other.coinValue) {
      bool removed = newCoinValue.remove(value);
      if (!removed) {
        return null;
      }
    }

    return Coinstack(newCoinValue);
  }
}
