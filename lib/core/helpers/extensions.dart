import 'package:flutter/cupertino.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String name, {Object? arguments}) {
    return Navigator.of(this).pushNamed(name, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String name, {Object? arguments}) {
    return Navigator.of(this).pushReplacementNamed(name, arguments: arguments);
  }

  void pop() => Navigator.of(this).pop();
}
