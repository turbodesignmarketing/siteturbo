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

  late final _$selectionPositionAtom =
      Atom(name: '_HomeControllerBase.selectionPosition', context: context);

  @override
  double get selectionPosition {
    _$selectionPositionAtom.reportRead();
    return super.selectionPosition;
  }

  @override
  set selectionPosition(double value) {
    _$selectionPositionAtom.reportWrite(value, super.selectionPosition, () {
      super.selectionPosition = value;
    });
  }

  late final _$selectionTitleWidthAtom =
      Atom(name: '_HomeControllerBase.selectionTitleWidth', context: context);

  @override
  double get selectionTitleWidth {
    _$selectionTitleWidthAtom.reportRead();
    return super.selectionTitleWidth;
  }

  @override
  set selectionTitleWidth(double value) {
    _$selectionTitleWidthAtom.reportWrite(value, super.selectionTitleWidth, () {
      super.selectionTitleWidth = value;
    });
  }

  @override
  String toString() {
    return '''
serviceTypeSelectedIndex: ${serviceTypeSelectedIndex},
selectionPosition: ${selectionPosition},
selectionTitleWidth: ${selectionTitleWidth}
    ''';
  }
}
