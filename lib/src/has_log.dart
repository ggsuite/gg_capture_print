// @license
// Copyright (c) 2019 - 2024 Dr. Gabriel Gatzsche. All Rights Reserved.
//
// Use of this source code is governed by terms that can be
// found in the LICENSE file in the root of this package.

///  Returns true if the log is found in the log messages.
bool hasLog(Pattern log, List<String> logMessages) =>
    logMessages.any((element) => element.contains(log));
