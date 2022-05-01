import 'package:oceanview/core/error/exceptions.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ShuttleBusLocalDataSource {
  Future<bool> busLocalDummy();
}

class ShuttleBusLocalDataSourceImpl extends ShuttleBusLocalDataSource {
  final SharedPreferences sharedPreferences;

  ShuttleBusLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<bool> busLocalDummy() async {
    bool removed = true;
    if (!removed) {
      throw CacheException();
    }

    return removed;
  }
}
