import 'package:flutter/foundation.dart';

class UserActionService extends ChangeNotifier {
  var _currentAction = UserActionType.onMain;

  UserActionType get currentAction => _currentAction;

  void setAction(UserActionType action) {
    _currentAction = action;
    notifyListeners();
  }
}

enum UserActionType { onMain, onUserData }
