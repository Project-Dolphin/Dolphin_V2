import 'package:oceanview/core/error/exceptions.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class DietLocalDataSource {
  // Future<bool> getDormDiet();
}

class DietLocalDataSourceImpl extends DietLocalDataSource {
  final SharedPreferences sharedPreferences;

  DietLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<bool> getDormDiet() async {
    bool removed = true;
    if (!removed) {
      throw CacheException();
    }

    return removed;
  }
}
