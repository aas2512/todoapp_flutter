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

  final _$editCategoryNameAtom =
      Atom(name: '_CategoriasControllerBase.editCategoryName');

  @override
  TextEditingController get editCategoryName {
    _$editCategoryNameAtom.context.enforceReadPolicy(_$editCategoryNameAtom);
    _$editCategoryNameAtom.reportObserved();
    return super.editCategoryName;
  }

  @override
  set editCategoryName(TextEditingController value) {
    _$editCategoryNameAtom.context.conditionallyRunInAction(() {
      super.editCategoryName = value;
      _$editCategoryNameAtom.reportChanged();
    }, _$editCategoryNameAtom, name: '${_$editCategoryNameAtom.name}_set');
  }

  final _$editCategoryDescriptionAtom =
      Atom(name: '_CategoriasControllerBase.editCategoryDescription');

  @override
  TextEditingController get editCategoryDescription {
    _$editCategoryDescriptionAtom.context
        .enforceReadPolicy(_$editCategoryDescriptionAtom);
    _$editCategoryDescriptionAtom.reportObserved();
    return super.editCategoryDescription;
  }

  @override
  set editCategoryDescription(TextEditingController value) {
    _$editCategoryDescriptionAtom.context.conditionallyRunInAction(() {
      super.editCategoryDescription = value;
      _$editCategoryDescriptionAtom.reportChanged();
    }, _$editCategoryDescriptionAtom,
        name: '${_$editCategoryDescriptionAtom.name}_set');
  }

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

  final _$categoryAtom = Atom(name: '_CategoriasControllerBase.category');

  @override
  List<dynamic> get category {
    _$categoryAtom.context.enforceReadPolicy(_$categoryAtom);
    _$categoryAtom.reportObserved();
    return super.category;
  }

  @override
  set category(List<dynamic> value) {
    _$categoryAtom.context.conditionallyRunInAction(() {
      super.category = value;
      _$categoryAtom.reportChanged();
    }, _$categoryAtom, name: '${_$categoryAtom.name}_set');
  }

  final _$saveCategoryAsyncAction = AsyncAction('saveCategory');

  @override
  Future<dynamic> saveCategory() {
    return _$saveCategoryAsyncAction.run(() => super.saveCategory());
  }

  final _$deleteCategoryAsyncAction = AsyncAction('deleteCategory');

  @override
  Future deleteCategory(int categoryId) {
    return _$deleteCategoryAsyncAction
        .run(() => super.deleteCategory(categoryId));
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

  final _$editCategoryAsyncAction = AsyncAction('editCategory');

  @override
  Future<dynamic> editCategory(String categoryId) {
    return _$editCategoryAsyncAction.run(() => super.editCategory(categoryId));
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
        'editCategoryName: ${editCategoryName.toString()},editCategoryDescription: ${editCategoryDescription.toString()},isLoading: ${isLoading.toString()},categoryName: ${categoryName.toString()},categoryDescription: ${categoryDescription.toString()},categoriesList: ${categoriesList.toString()},category: ${category.toString()},isFormIsValid: ${isFormIsValid.toString()}';
    return '{$string}';
  }
}
