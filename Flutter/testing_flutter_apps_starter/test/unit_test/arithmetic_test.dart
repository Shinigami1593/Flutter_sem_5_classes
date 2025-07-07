// UNIT TESTING
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_flutter_apps/model/arithmetic.dart';

void main(){
  // FIRST TEST

  group('Arithmetic Test 1', (){
    test('this is my first test', (){
      int expectedValue = 1;
      int actualValue = 1;
      expect(actualValue, expectedValue);
    });

    test('add two numbers', (){
      final arithmetic = Arithmetic();
      int expectedValue = 7;
      arithmetic.first = 3;
      arithmetic.second = 4;
      int actualValue = arithmetic.add()!;

      expect(actualValue, expectedValue);
    });

  });

  group('Arithmetic Test 2', (){
    test('substract two numbers', (){
      final arithmetic = Arithmetic();
      int expectedValue = -1;
      arithmetic.first = 3;
      arithmetic.second = 4;
      int actualValue = arithmetic.subtract()!;

      expect(actualValue, expectedValue);
    });
    test('multiply two numbers', (){
      final arithmetic = Arithmetic();
      int expectedValue = 144;
      arithmetic.first = 12;
      arithmetic.second = 12;
      int actualValue = arithmetic.multiply()!;

      expect(actualValue, expectedValue);
    });
    test('divide two numbers', (){
      final arithmetic = Arithmetic();
      int expectedValue = 5;
      arithmetic.first = 20;
      arithmetic.second = 4;
      int actualValue = arithmetic.divide()!;

      expect(actualValue, expectedValue);
    });

  });
} 