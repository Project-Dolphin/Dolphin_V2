import 'package:oceanview/core/error/exceptions.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class CityBusLocalDataSource {
  Future<bool> busLocalDummy();
}

class CityBusLocalDataSourceImpl extends CityBusLocalDataSource {
  final SharedPreferences sharedPreferences;

  CityBusLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<bool> busLocalDummy() async {
    bool removed = true;
    if (!removed) {
      throw CacheException();
    }
    return removed;
  }
}
