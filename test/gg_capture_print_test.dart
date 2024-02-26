// @license
// Copyright (c) 2019 - 2024 Dr. Gabriel Gatzsche. All Rights Reserved.
//
// Use of this source code is governed by terms that can be
// found in the LICENSE file in the root of this package.

import 'package:args/command_runner.dart';
import 'package:gg_capture_print/gg_capture_print.dart';
import 'package:test/test.dart';

void main() {
  final messages = <String>[];

  group('GgCapturePrint()', () {
    // #########################################################################
    group('exec()', () {
      test('description of the test ', () async {
        final ggCapturePrint =
            GgCapturePrint(param: 'foo', log: (msg) => messages.add(msg));

        await ggCapturePrint.exec();
      });
    });

    // #########################################################################
    group('Command', () {
      test('should allow to run the code from command line', () async {
        final ggCapturePrint =
            GgCapturePrintCmd(log: (msg) => messages.add(msg));

        final CommandRunner<void> runner = CommandRunner<void>(
          'ggCapturePrint',
          'Description goes here.',
        )..addCommand(ggCapturePrint);

        await runner.run(['ggCapturePrint', '--param', 'foo']);
      });
    });
  });
}
