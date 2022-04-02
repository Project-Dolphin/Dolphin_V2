import 'package:oceanview/core/error/exceptions.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class HomeDataLocalDataSource {
  Future<bool> busLocalDummy();
}

class HomeDataLocalDataSourceImpl extends HomeDataLocalDataSource {
  final SharedPreferences sharedPreferences;

  HomeDataLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<bool> busLocalDummy() async {
    bool removed = true;
    if (!removed) {
      throw CacheException();
    }
    return removed;
  }
}
