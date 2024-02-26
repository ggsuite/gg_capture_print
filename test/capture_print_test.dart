// @license
// Copyright (c) 2019 - 2024 Dr. Gabriel Gatzsche. All Rights Reserved.
//
// Use of this source code is governed by terms that can be
// found in the LICENSE file in the root of this package.

import 'package:gg_capture_print/gg_capture_print.dart';
import 'package:test/test.dart';

void main() {
  group('CapturePrint', () {
    test('should work fine', () {
      final messages = <String>[];

      capturePrint(
        log: (msg) => messages.add(msg),
        code: () {
          print('Hello');
          print('World');
        },
      );

      expect(messages, ['Hello', 'World']);
    });
  });
}
