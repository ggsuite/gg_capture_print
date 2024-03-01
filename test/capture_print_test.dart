// @license
// Copyright (c) 2019 - 2024 Dr. Gabriel Gatzsche. All Rights Reserved.
//
// Use of this source code is governed by terms that can be
// found in the LICENSE file in the root of this package.

import 'package:gg_capture_print/gg_capture_print.dart';
import 'package:test/test.dart';

void main() {
  group('CapturePrint', () {
    group('should work fine', () {
      // .......................................................................
      test('with async methods', () async {
        final messages = <String>[];
        final messagesReturned = await capturePrint(
          log: (msg) => messages.add(msg),
          code: () {
            return Future.delayed(const Duration(microseconds: 1), () {
              print('Hello');
              print('World');
            });
          },
        );

        expect(messages, ['Hello', 'World']);
        expect(messages, messagesReturned);
      });

      // .......................................................................
      test('with sync methods', () async {
        final messages = <String>[];

        final result = capturePrint(
          log: (msg) => messages.add(msg),
          code: () {
            print('Hello');
            print('World');
          },
        );

        expect(messages, ['Hello', 'World']);
        final messagesReturned = await result;
        expect(messages, messagesReturned);
      });
    });
  });
}
