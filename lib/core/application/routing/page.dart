import 'package:equatable/equatable.dart';

class Pages {
  static const String _splash = 'splash';
  static const String _home = 'home';
  static const String _profile = 'profile';

  static PageInfo root = const PageInfo(path: '/', name: 'root');

  static PageInfo splash = PageInfo(
    path: _splash,
    name: _splash,
    navigationParent: root,
  );
  static PageInfo home = PageInfo(
    path: _home,
    name: _home,
    navigationParent: root,
  );
  static PageInfo profile = PageInfo(
    path: _profile,
    name: _profile,
    navigationParent: root,
  );
}

class PageInfo extends Equatable {
  const PageInfo({
    required this.path,
    required this.name,
    this.navigationParent,
  });

  final String path;
  final String name;
  final PageInfo? navigationParent;

  String get navigationPath {
    if (navigationParent != null) {
      if (navigationParent!.navigationPath.endsWith('/')) {
        return '${navigationParent!.navigationPath}$path';
      } else {
        return '${navigationParent!.navigationPath}/$path';
      }
    } else {
      return path;
    }
  }

  @override
  List<Object?> get props => [path, name];
}
