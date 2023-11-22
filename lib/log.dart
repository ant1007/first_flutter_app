import 'package:logger/logger.dart';

class Log {
  static final Logger _logger = Logger(
    filter: DevelopmentFilter(),
    printer: PrefixPrinter(
      PrettyPrinter(
        stackTraceBeginIndex: 5,
        methodCount: 1,
      ),
    ),
    level: Level.all,
  );

  static void v(dynamic message) {
    _logger.t(message);
  }

  static void d(dynamic message) {
    _logger.d(message);
  }

  static void i(dynamic message) {
    _logger.i(message);
  }

  static void w(dynamic message) {
    _logger.w(message);
  }

  static void e(dynamic message) {
    _logger.e(message);
  }

  static void wtf(dynamic message) {
    _logger.f(message);
  }
}

class DevelopmentFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    var shouldLog = false;
    assert(() {
      // assert 断言只有在 debug mode 才会被调用。
      if (event.level.index >= level!.index) {
        shouldLog = true;
      }
      return true;
    }());
    return shouldLog;
  }
}
