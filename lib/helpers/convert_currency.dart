import 'package:flutter_money_formatter/flutter_money_formatter.dart';

FlutterMoneyFormatter currencyFormat(double amount, String symbol,
          String decimalSeparator, String thousanSeparator) =>
      new FlutterMoneyFormatter(
          amount: amount,
          settings: MoneyFormatterSettings(
              thousandSeparator: thousanSeparator,
              decimalSeparator: decimalSeparator,
              symbol: symbol));