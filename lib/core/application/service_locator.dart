import 'package:get_it/get_it.dart';

/// Encapsulation of the Service Locator Library
///
/// Use the service locator only in the presentation layer.
/// Because all other dependencies should be resolved by the
/// dependency injection container.

/// [T] type to get an instance for.
@override
T sl<T extends Object>() {
  return GetIt.instance.get<T>();
}

@override
void slResetLazySingleton<T extends Object>() {
  GetIt.instance.resetLazySingleton<T>();
}
