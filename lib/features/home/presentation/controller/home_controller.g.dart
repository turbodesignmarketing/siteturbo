// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on _HomeControllerBase, Store {
  late final _$serviceOptionsAtom =
      Atom(name: '_HomeControllerBase.serviceOptions', context: context);

  @override
  List<ServiceTypeEnum> get serviceOptions {
    _$serviceOptionsAtom.reportRead();
    return super.serviceOptions;
  }

  @override
  set serviceOptions(List<ServiceTypeEnum> value) {
    _$serviceOptionsAtom.reportWrite(value, super.serviceOptions, () {
      super.serviceOptions = value;
    });
  }

  late final _$selectedServiceTypeAtom =
      Atom(name: '_HomeControllerBase.selectedServiceType', context: context);

  @override
  ServiceTypeEnum get selectedServiceType {
    _$selectedServiceTypeAtom.reportRead();
    return super.selectedServiceType;
  }

  @override
  set selectedServiceType(ServiceTypeEnum value) {
    _$selectedServiceTypeAtom.reportWrite(value, super.selectedServiceType, () {
      super.selectedServiceType = value;
    });
  }

  late final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase', context: context);

  @override
  void setSelectedServiceType(ServiceTypeEnum serviceType) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setSelectedServiceType');
    try {
      return super.setSelectedServiceType(serviceType);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
serviceOptions: ${serviceOptions},
selectedServiceType: ${selectedServiceType}
    ''';
  }
}
