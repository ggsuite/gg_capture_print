// @license
// Copyright (c) ggsuite
//
// Use of this source code is governed by terms that can be
// found in the LICENSE file in the root of this package.

import 'package:gg_capture_print/gg_capture_print.dart';
import 'package:test/test.dart';

void main() {
  group('HasLog', () {
    test('should work fine', () {
      final logMessages = ['X  Y', 'ABC', 'DEF'];
      expect(hasLog(logMessages, 'X'), isTrue);
      expect(hasLog(logMessages, 'Y'), isTrue);
      expect(hasLog(logMessages, 'Z'), isFalse);
      expect(hasLog(logMessages, RegExp(r'X\s+Y')), isTrue);
    });
  });
}
