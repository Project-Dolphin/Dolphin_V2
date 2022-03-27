import 'package:oceanview/core/error/exceptions.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class BusLocalDataSource {
  Future<bool> busLocalDummy();
}

class BusLocalDataSourceImpl extends BusLocalDataSource {
  final SharedPreferences sharedPreferences;

  BusLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<bool> busLocalDummy() async {
    bool removed = true;
    if (!removed) {
      throw CacheException();
    }
    return removed;
  }
}
