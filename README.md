## How to reproduce

* Swift version: https://github.com/swiftwasm/swift/releases/download/swift-wasm-6.0-SNAPSHOT-2024-06-19-a/swift-wasm-6.0-SNAPSHOT-2024-06-19-a-ubuntu22.04_x86_64.tar.gz
* Ubuntu 22.04.4 LTS x86_64

```console
$ while (rm -rf .build && swift build --configuration release --static-swift-stdlib --product poc-module-name-conflict); do done
Building for production...
[5/5] Linking poc-module-name-conflict
Build of product 'poc-module-name-conflict' complete! (1.61s)
Building for production...
error: link command failed with exit code 1 (use -v to see invocation)
/home/katei/ghq/github.com/kylef/swiftenv/versions/DEVELOPMENT-SNAPSHOT-2024-06-04-a/usr/lib/swift_static/linux/libFoundation.a(CFCalendar.c.o):CFCalendar.c:function __calcNextDaylightSavingTimeTransition: error: undefined reference to 'ucal_setMillis_69_swift'
/home/katei/ghq/github.com/kylef/swiftenv/versions/DEVELOPMENT-SNAPSHOT-2024-06-04-a/usr/lib/swift_static/linux/libFoundation.a(CFCalendar.c.o):CFCalendar.c:function __calcNextDaylightSavingTimeTransition: error: undefined reference to 'ucal_getTimeZoneTransitionDate_69_swift'
/home/katei/ghq/github.com/kylef/swiftenv/versions/DEVELOPMENT-SNAPSHOT-2024-06-04-a/usr/lib/swift_static/linux/libFoundation.a(CFCalendar.c.o):CFCalendar.c:function __CFCalendarDeallocate: error: undefined reference to 'ucal_close_69_swift'
/home/katei/ghq/github.com/kylef/swiftenv/versions/DEVELOPMENT-SNAPSHOT-2024-06-04-a/usr/lib/swift_static/linux/libFoundation.a(CFCalendar.c.o):CFCalendar.c:function __CFCalendarCreateUCalendar: error: undefined reference to 'ucal_open_69_swift'
/home/katei/ghq/github.com/kylef/swiftenv/versions/DEVELOPMENT-SNAPSHOT-2024-06-04-a/usr/lib/swift_static/linux/libFoundation.a(CFCalendar.c.o):CFCalendar.c:function __CFCalendarSetupCal: error: undefined reference to 'ucal_setAttribute_69_swift'
/home/katei/ghq/github.com/kylef/swiftenv/versions/DEVELOPMENT-SNAPSHOT-2024-06-04-a/usr/lib/swift_static/linux/libFoundation.a(CFCalendar.c.o):CFCalendar.c:function __CFCalendarSetupCal: error: undefined reference to 'ucal_setAttribute_69_swift'
/home/katei/ghq/github.com/kylef/swiftenv/versions/DEVELOPMENT-SNAPSHOT-2024-06-04-a/usr/lib/swift_static/linux/libFoundation.a(CFCalendar.c.o):CFCalendar.c:function __CFCalendarSetupCal: error: undefined reference to 'ucal_setGregorianChange_69_swift'
/home/katei/ghq/github.com/kylef/swiftenv/versions/DEVELOPMENT-SNAPSHOT-2024-06-04-a/usr/lib/swift_static/linux/libFoundation.a(CFCalendar.c.o):CFCalendar.c:function _CFCalendarIsDateInWeekend: error: undefined reference to 'ucal_isWeekend_69_swift'
/home/katei/ghq/github.com/kylef/swiftenv/versions/DEVELOPMENT-SNAPSHOT-2024-06-04-a/usr/lib/swift_static/linux/libFoundation.a(CFCalendar.c.o):CFCalendar.c:function _CFCalendarGetNextWeekend: error: undefined reference to 'ucal_getDayOfWeekType_69_swift'
/home/katei/ghq/github.com/kylef/swiftenv/versions/DEVELOPMENT-SNAPSHOT-2024-06-04-a/usr/lib/swift_static/linux/libFoundation.a(CFCalendar.c.o):CFCalendar.c:function _CFCalendarGetNextWeekend: error: undefined reference to 'ucal_getDayOfWeekType_69_swift'
/home/katei/ghq/github.com/kylef/swiftenv/versions/DEVELOPMENT-SNAPSHOT-2024-06-04-a/usr/lib/swift_static/linux/libFoundation.a(CFCalendar.c.o):CFCalendar.c:function _CFCalendarGetNextWeekend: error: undefined reference to 'ucal_getDayOfWeekType_69_swift'
/home/katei/ghq/github.com/kylef/swiftenv/versions/DEVELOPMENT-SNAPSHOT-2024-06-04-a/usr/lib/swift_static/linux/libFoundation.a(CFCalendar.c.o):CFCalendar.c:function _CFCalendarGetNextWeekend: error: undefined reference to 'ucal_getDayOfWeekType_69_swift'
/home/katei/ghq/github.com/kylef/swiftenv/versions/DEVELOPMENT-SNAPSHOT-2024-06-04-a/usr/lib/swift_static/linux/libFoundation.a(CFCalendar.c.o):CFCalendar.c:function _CFCalendarGetNextWeekend: error: undefined reference to 'ucal_getWeekendTransition_69_swift'
...
```
