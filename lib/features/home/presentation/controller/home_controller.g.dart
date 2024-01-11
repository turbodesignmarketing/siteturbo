// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on _HomeControllerBase, Store {
  late final _$serviceTypeSelectedIndexAtom = Atom(
      name: '_HomeControllerBase.serviceTypeSelectedIndex', context: context);

  @override
  int get serviceTypeSelectedIndex {
    _$serviceTypeSelectedIndexAtom.reportRead();
    return super.serviceTypeSelectedIndex;
  }

  @override
  set serviceTypeSelectedIndex(int value) {
    _$serviceTypeSelectedIndexAtom
        .reportWrite(value, super.serviceTypeSelectedIndex, () {
      super.serviceTypeSelectedIndex = value;
    });
  }

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

  @override
  String toString() {
    return '''
serviceTypeSelectedIndex: ${serviceTypeSelectedIndex},
serviceOptions: ${serviceOptions},
selectedServiceType: ${selectedServiceType}
    ''';
  }
}
