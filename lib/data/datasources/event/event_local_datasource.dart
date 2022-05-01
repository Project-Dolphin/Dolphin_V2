import 'package:oceanview/core/error/exceptions.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class EventLocalDataSource {
  Future<bool> busLocalDummy();
}

class EventLocalDataSourceImpl extends EventLocalDataSource {
  final SharedPreferences sharedPreferences;

  EventLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<bool> busLocalDummy() async {
    bool removed = true;
    if (!removed) {
      throw CacheException();
    }

    return removed;
  }
}
