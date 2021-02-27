/// Support for doing something awesome.
///
/// More dartdocs go here.
library injectable_ordering;

import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable_ordering/injectable_ordering.config.dart';

abstract class Env {
  static const test = 'test';
  static const main = 'main';
}

@LazySingleton(env: [Env.main])
class AuthVM {}

@LazySingleton(as: AuthVM, env: [Env.test])
class MockAuthVM extends AuthVM {}

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencies() => $initGetIt(getIt);
