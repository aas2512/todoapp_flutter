// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categorias_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CategoriasController on _CategoriasControllerBase, Store {
  Computed<bool> _$isFormIsValidComputed;

  @override
  bool get isFormIsValid =>
      (_$isFormIsValidComputed ??= Computed<bool>(() => super.isFormIsValid))
          .value;

  final _$isLoadingAtom = Atom(name: '_CategoriasControllerBase.isLoading');

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

  final _$categoryNameAtom =
      Atom(name: '_CategoriasControllerBase.categoryName');

  @override
  String get categoryName {
    _$categoryNameAtom.context.enforceReadPolicy(_$categoryNameAtom);
    _$categoryNameAtom.reportObserved();
    return super.categoryName;
  }

  @override
  set categoryName(String value) {
    _$categoryNameAtom.context.conditionallyRunInAction(() {
      super.categoryName = value;
      _$categoryNameAtom.reportChanged();
    }, _$categoryNameAtom, name: '${_$categoryNameAtom.name}_set');
  }

  final _$categoryDescriptionAtom =
      Atom(name: '_CategoriasControllerBase.categoryDescription');

  @override
  String get categoryDescription {
    _$categoryDescriptionAtom.context
        .enforceReadPolicy(_$categoryDescriptionAtom);
    _$categoryDescriptionAtom.reportObserved();
    return super.categoryDescription;
  }

  @override
  set categoryDescription(String value) {
    _$categoryDescriptionAtom.context.conditionallyRunInAction(() {
      super.categoryDescription = value;
      _$categoryDescriptionAtom.reportChanged();
    }, _$categoryDescriptionAtom,
        name: '${_$categoryDescriptionAtom.name}_set');
  }

  final _$categoriesListAtom =
      Atom(name: '_CategoriasControllerBase.categoriesList');

  @override
  List<dynamic> get categoriesList {
    _$categoriesListAtom.context.enforceReadPolicy(_$categoriesListAtom);
    _$categoriesListAtom.reportObserved();
    return super.categoriesList;
  }

  @override
  set categoriesList(List<dynamic> value) {
    _$categoriesListAtom.context.conditionallyRunInAction(() {
      super.categoriesList = value;
      _$categoriesListAtom.reportChanged();
    }, _$categoriesListAtom, name: '${_$categoriesListAtom.name}_set');
  }

  final _$saveCategoryAsyncAction = AsyncAction('saveCategory');

  @override
  Future saveCategory() {
    return _$saveCategoryAsyncAction.run(() => super.saveCategory());
  }

  final _$getCategoriesAsyncAction = AsyncAction('getCategories');

  @override
  Future getCategories() {
    return _$getCategoriesAsyncAction.run(() => super.getCategories());
  }

  final _$getAllCategoriesAsyncAction = AsyncAction('getAllCategories');

  @override
  Future getAllCategories() {
    return _$getAllCategoriesAsyncAction.run(() => super.getAllCategories());
  }

  final _$_CategoriasControllerBaseActionController =
      ActionController(name: '_CategoriasControllerBase');

  @override
  void setNameCategory(String value) {
    final _$actionInfo =
        _$_CategoriasControllerBaseActionController.startAction();
    try {
      return super.setNameCategory(value);
    } finally {
      _$_CategoriasControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDescriptionCategory(String value) {
    final _$actionInfo =
        _$_CategoriasControllerBaseActionController.startAction();
    try {
      return super.setDescriptionCategory(value);
    } finally {
      _$_CategoriasControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  List<dynamic> setListCategories(List<dynamic> value) {
    final _$actionInfo =
        _$_CategoriasControllerBaseActionController.startAction();
    try {
      return super.setListCategories(value);
    } finally {
      _$_CategoriasControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'isLoading: ${isLoading.toString()},categoryName: ${categoryName.toString()},categoryDescription: ${categoryDescription.toString()},categoriesList: ${categoriesList.toString()},isFormIsValid: ${isFormIsValid.toString()}';
    return '{$string}';
  }
}
