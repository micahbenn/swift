// REQUIRES: objc_interop
// REQUIRES: CPU=x86_64
// RUN: %target-swift-frontend -typecheck -swift-version 3 %s
// RUN: rm -rf %t && mkdir -p %t && %target-swift-frontend -c -update-code -primary-file %s -emit-migrated-file-path %t/static-abs-swift-abs-float80.swift.result -emit-remap-file-path %t/static-abs-swift-abs-float80.swift.remap -o /dev/null
// RUN: diff -u %S/static-abs-swift-abs-float80.swift.expected %t/static-abs-swift-abs-float80.swift.result
// RUN: %target-swift-frontend -typecheck -swift-version 4 %t/static-abs-swift-abs-float80.swift.result

_ = Float80.abs(0)
