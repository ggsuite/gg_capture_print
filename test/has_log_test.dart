// @license
// Copyright (c) 2019 - 2024 Dr. Gabriel Gatzsche. All Rights Reserved.
//
// Use of this source code is governed by terms that can be
// found in the LICENSE file in the root of this package.

import 'package:gg_capture_print/gg_capture_print.dart';
import 'package:test/test.dart';

void main() {
  group('HasLog', () {
    test('should work fine', () {
      final logMessages = ['X  Y', 'ABC', 'DEF'];
      expect(hasLog('X', logMessages), isTrue);
      expect(hasLog('Y', logMessages), isTrue);
      expect(hasLog('Z', logMessages), isFalse);
      expect(hasLog(RegExp(r'X\s+Y'), logMessages), isTrue);
    });
  });
}
