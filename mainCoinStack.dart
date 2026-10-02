import 'CoinStack.dart ';

void main() {

    final stack1 = Coinstack([5, 10, 20]);
    final stack2 = Coinstack([10, 20, 50]);

    print('Stack 1: ${[stack1.result]}');
    print('Stack 2: ${[stack2.result]}');
}