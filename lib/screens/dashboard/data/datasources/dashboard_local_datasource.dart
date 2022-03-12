import 'package:oceanview/core/error/exceptions.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class HomeLocalDataSource {
  Future<bool> clearToken();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  final SharedPreferences sharedPreferences;

  HomeLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<bool> clearToken() async {
    bool removed = true;
    if (!removed) {
      throw CacheException();
    }
    return removed;
  }
}
