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

  final _$isLoadingAtom = Atom(name: '_TodoControllerBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.context.enforceReadPolicy(_$isLoadingAtom);
    _$isLoadingAtom.reportObserved();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.context.conditionallyRunInAction(() {
      super.isLoading = value;
      _$isLoadingAtom.reportChanged();
    }, _$isLoadingAtom, name: '${_$isLoadingAtom.name}_set');
  }

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
  dynamic get selectedValue {
    _$selectedValueAtom.context.enforceReadPolicy(_$selectedValueAtom);
    _$selectedValueAtom.reportObserved();
    return super.selectedValue;
  }

  @override
  set selectedValue(dynamic value) {
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

  final _$getCategoriesAsyncAction = AsyncAction('getCategories');

  @override
  Future getCategories() {
    return _$getCategoriesAsyncAction.run(() => super.getCategories());
  }

  final _$saveTodoAsyncAction = AsyncAction('saveTodo');

  @override
  Future<dynamic> saveTodo() {
    return _$saveTodoAsyncAction.run(() => super.saveTodo());
  }

  final _$getTodosAsyncAction = AsyncAction('getTodos');

  @override
  Future getTodos({int catId = 0}) {
    return _$getTodosAsyncAction.run(() => super.getTodos(catId: catId));
  }

  final _$deleteTodoAsyncAction = AsyncAction('deleteTodo');

  @override
  Future<dynamic> deleteTodo(dynamic itemId) {
    return _$deleteTodoAsyncAction.run(() => super.deleteTodo(itemId));
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
  void setSelectedItem(dynamic value) {
    final _$actionInfo = _$_TodoControllerBaseActionController.startAction();
    try {
      return super.setSelectedItem(value);
    } finally {
      _$_TodoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'isLoading: ${isLoading.toString()},todoTitle: ${todoTitle.toString()},todoDescription: ${todoDescription.toString()},todoDate: ${todoDate.toString()},selectedValue: ${selectedValue.toString()},isFormIsValid: ${isFormIsValid.toString()}';
    return '{$string}';
  }
}
