// @license
// Copyright (c) 2019 - 2024 Dr. Gabriel Gatzsche. All Rights Reserved.
//
// Use of this source code is governed by terms that can be
// found in the LICENSE file in the root of this package.

import 'dart:async';

/// Captures the print statements and forwards them to the log function.
FutureOr<List<String>> capturePrint({
  void Function(String)? ggLog,
  required FutureOr<void> Function() code,
}) async {
  final completer = Completer<List<String>>();
  final messages = <String>[];

  var spec = ZoneSpecification(
    print: (_, __, ___, String msg) {
      messages.add(msg);
      ggLog?.call(msg);
    },
  );
  await Zone.current.fork(specification: spec).run(() async {
    await code();
    completer.complete(messages);
  });

  return completer.future;
}
