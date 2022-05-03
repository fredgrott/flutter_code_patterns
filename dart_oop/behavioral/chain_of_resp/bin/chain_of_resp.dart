

// ignore_for_file: non_constant_identifier_names, avoid_print


import 'package:chain_of_resp/chain_of_resp.dart';

void main() {
  final logger = ConsoleLogger(Set.from(LogLevel.values));
  final eLog = EmailLogger(
      {LogLevel.functionalMessage, LogLevel.functionalError},);
  final fLog = FileLogger({LogLevel.warning, LogLevel.error});

  logger.next = eLog;
  eLog.next = fLog;

  logger.log(LogLevel.debug, "Some amazingly helpful debug message");
  logger.log(LogLevel.info, "Pretty important information");

  logger.log(LogLevel.warning, "This is a warning!");
  logger.log(LogLevel.error, "AHHHHHHHHH!");

  logger.log(LogLevel.functionalError, "This is not a show stopper");
  logger.log(LogLevel.functionalMessage, "This is basically just info");

  /*
    [Console]: Some amazingly helpful debug message
    [Console]: Pretty important information
    [Console]: This is a warning!
    [File]: This is a warning!
    [Console]: AHHHHHHHHH!
    [File]: AHHHHHHHHH!
    [Console]: This is not a show stopper
    [Email]: This is not a show stopper
    [Console]: This is basically just info
    [Email]: This is basically just info
  */
}
