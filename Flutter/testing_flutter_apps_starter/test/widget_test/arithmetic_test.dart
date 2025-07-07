import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_flutter_apps/screen/arithmetic.dart';

void main(){
  testWidgets('Should have a title', (WidgetTester tester) async{
    await tester.pumpWidget( // widget testing
      const MaterialApp(
        home: ArithemticScreen(),
      )
    );
    //Finder is to find the required thing
    Finder title = find.text('Arithmetic Operations');
    expect(title, findsOneWidget);
  });

  //adding test
  testWidgets('add two numbers', (tester) async{
    await tester.pumpWidget(
      const MaterialApp(
        home: ArithemticScreen(),
      )
    );
    await tester.pumpAndSettle(); // lets the animation finish and go to next page

    await tester.enterText(find.byType(TextField).first, '3');//first and last only when there are exact 2 widgets on one type only
    await tester.enterText(find.byType(TextField).last, '5');

    //await tester.tap(find.byType(ElevatedButton).at(0)); by using indexing
    await tester.tap(find.widgetWithText(ElevatedButton, 'Add'));
    await tester.pumpAndSettle();

    expect(find.text('Result : 8'), findsOneWidget);
  });

  //Substraction test
  testWidgets('substract two numbers', (tester) async{
    await tester.pumpWidget(
      const MaterialApp(
        home: ArithemticScreen(),
      )
    );
    await tester.pumpAndSettle(); // lets the animation finish and go to next page

    await tester.enterText(find.byType(TextField).at(0), '3'); 
    await tester.enterText(find.byType(TextField).at(1), '5');

    //await tester.tap(find.byType(ElevatedButton).at(0)); by using indexing
    await tester.tap(find.byType(ElevatedButton).at(1));
    await tester.pumpAndSettle();

    expect(find.text('Result : -2'), findsOneWidget);
  });
}