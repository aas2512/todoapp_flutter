// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoController on _TodoControllerBase, Store {
  Computed<bool> _$isFormIsValidComputed;

  @override
  bool get isFormIsValid =>
      (_$isFormIsValidComputed ??= Computed<bool>(() => super.isFormIsValid))
          .value;

  final _$todoTitleAtom = Atom(name: '_TodoControllerBase.todoTitle');

  @override
  TextEditingController get todoTitle {
    _$todoTitleAtom.context.enforceReadPolicy(_$todoTitleAtom);
    _$todoTitleAtom.reportObserved();
    return super.todoTitle;
  }

  @override
  set todoTitle(TextEditingController value) {
    _$todoTitleAtom.context.conditionallyRunInAction(() {
      super.todoTitle = value;
      _$todoTitleAtom.reportChanged();
    }, _$todoTitleAtom, name: '${_$todoTitleAtom.name}_set');
  }

  final _$todoDescriptionAtom =
      Atom(name: '_TodoControllerBase.todoDescription');

  @override
  TextEditingController get todoDescription {
    _$todoDescriptionAtom.context.enforceReadPolicy(_$todoDescriptionAtom);
    _$todoDescriptionAtom.reportObserved();
    return super.todoDescription;
  }

  @override
  set todoDescription(TextEditingController value) {
    _$todoDescriptionAtom.context.conditionallyRunInAction(() {
      super.todoDescription = value;
      _$todoDescriptionAtom.reportChanged();
    }, _$todoDescriptionAtom, name: '${_$todoDescriptionAtom.name}_set');
  }

  final _$todoDateAtom = Atom(name: '_TodoControllerBase.todoDate');

  @override
  TextEditingController get todoDate {
    _$todoDateAtom.context.enforceReadPolicy(_$todoDateAtom);
    _$todoDateAtom.reportObserved();
    return super.todoDate;
  }

  @override
  set todoDate(TextEditingController value) {
    _$todoDateAtom.context.conditionallyRunInAction(() {
      super.todoDate = value;
      _$todoDateAtom.reportChanged();
    }, _$todoDateAtom, name: '${_$todoDateAtom.name}_set');
  }

  final _$selectedValueAtom = Atom(name: '_TodoControllerBase.selectedValue');

  @override
  String get selectedValue {
    _$selectedValueAtom.context.enforceReadPolicy(_$selectedValueAtom);
    _$selectedValueAtom.reportObserved();
    return super.selectedValue;
  }

  @override
  set selectedValue(String value) {
    _$selectedValueAtom.context.conditionallyRunInAction(() {
      super.selectedValue = value;
      _$selectedValueAtom.reportChanged();
    }, _$selectedValueAtom, name: '${_$selectedValueAtom.name}_set');
  }

  final _$selectTodoDateAsyncAction = AsyncAction('selectTodoDate');

  @override
  Future selectTodoDate(dynamic context) {
    return _$selectTodoDateAsyncAction.run(() => super.selectTodoDate(context));
  }

  final _$_TodoControllerBaseActionController =
      ActionController(name: '_TodoControllerBase');

  @override
  void setTodoTitle(String value) {
    final _$actionInfo = _$_TodoControllerBaseActionController.startAction();
    try {
      return super.setTodoTitle(value);
    } finally {
      _$_TodoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTodoDate(String value) {
    final _$actionInfo = _$_TodoControllerBaseActionController.startAction();
    try {
      return super.setTodoDate(value);
    } finally {
      _$_TodoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void selectedDrop(String value) {
    final _$actionInfo = _$_TodoControllerBaseActionController.startAction();
    try {
      return super.selectedDrop(value);
    } finally {
      _$_TodoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'todoTitle: ${todoTitle.toString()},todoDescription: ${todoDescription.toString()},todoDate: ${todoDate.toString()},selectedValue: ${selectedValue.toString()},isFormIsValid: ${isFormIsValid.toString()}';
    return '{$string}';
  }
}
