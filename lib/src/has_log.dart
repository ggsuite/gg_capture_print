// @license
// Copyright (c) ggsuite
//
// Use of this source code is governed by terms that can be
// found in the LICENSE file in the root of this package.

///  Returns true if the log is found in the log messages.
bool hasLog(List<String> logMessages, Pattern log) =>
    logMessages.any((element) => element.contains(log));
