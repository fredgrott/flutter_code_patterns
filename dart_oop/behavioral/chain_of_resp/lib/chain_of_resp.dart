// ignore_for_file: avoid_print

enum LogLevel {
  none,
  info,
  debug,
  warning,
  error,
  functionalMessage,
  functionalError,
}

abstract class Logger {
  Set<LogLevel> levels;
  late Logger _next;

  Logger(this.levels);

  bool get universal => levels.containsAll(LogLevel.values);
  // ignore: avoid_setters_without_getters
  set next(Logger nextLogger) => _next = nextLogger;

  void addLevel(LogLevel level) => levels.add(level);

  void log(LogLevel level, String msg) {
    if (levels.contains(level) || universal) {
      writeMessage(msg);
    }
    _next.log(level, msg);
  }

  void writeMessage(String msg);
}

class ConsoleLogger extends Logger {
  ConsoleLogger(Set<LogLevel> levels) : super(levels);
  @override
  void writeMessage(String msg) => print("[Console]: $msg");
}

class EmailLogger extends Logger {
  EmailLogger(Set<LogLevel> levels) : super(levels);
  @override
  void writeMessage(String msg) => print("[Email]: $msg");
}

class FileLogger extends Logger {
  FileLogger(Set<LogLevel> levels) : super(levels);
  @override
  void writeMessage(String msg) => print("[File]: $msg");
}
