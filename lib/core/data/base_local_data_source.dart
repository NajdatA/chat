
abstract class BaseLocalDataSource {}

class BaseLocalDataSourceImpl implements BaseLocalDataSource {}
//  final SharedPreferences sharedPreferences;

//  BaseLocalDataSourceImpl({@required this.sharedPreferences});

//  @override
//  Future<bool> get isRememberMe => Future.value(
//      sharedPreferences.getBool(SharedPreferencesKeys.IS_REMEMBER_ME));
//
//  @override
//  Future<String> get token => Future.value(
//      sharedPreferences.getString(SharedPreferencesKeys.USER_TOKEN));
//
//  @override
//  Future<int> get userID =>
//      Future.value(sharedPreferences.getInt(SharedPreferencesKeys.ID));
//
//  @override
//  Future<bool> get isLoggedIn => Future.value(
//      sharedPreferences.getBool(SharedPreferencesKeys.IS_LOGGED_IN));
//
//  @override
//  Future<String> get userName => Future.value(
//      sharedPreferences.getString(SharedPreferencesKeys.USER_NAME));
//
//  @override
//  Future<Null> logout() async {
//    print('clear shared preferences');
//    await sharedPreferences.clear();
//    print('setting login false');
//    await sharedPreferences.setBool(SharedPreferencesKeys.IS_LOGGED_IN, false);
//  }
//
//  @override
//  updateUser(int id, String name, String email, String accessToken, String address, String number,
//      bool remember, int verified, bool isNotSocial) async {
//    print('remember is $remember');
//    print('token is $accessToken');
//    await sharedPreferences.setInt(SharedPreferencesKeys.ID, id);
//    await sharedPreferences.setString(SharedPreferencesKeys.USER_NAME, name);
//    await sharedPreferences.setString(SharedPreferencesKeys.EMAIL, email);
//    await sharedPreferences.setString(SharedPreferencesKeys.MY_ADDRESS, address);
//    await sharedPreferences.setString(SharedPreferencesKeys.MY_NUMBER, number);
//    await sharedPreferences.setString(
//        SharedPreferencesKeys.USER_TOKEN, accessToken);
//    await sharedPreferences.setInt(SharedPreferencesKeys.IS_VERIFIED, verified);
//    await sharedPreferences.setBool(SharedPreferencesKeys.IS_NOT_SOCIAL, isNotSocial);
//    if (remember) setLoggedIn();
//  }
//
//  @override
//  setLoggedIn() async {
//    return await sharedPreferences.setBool(
//        SharedPreferencesKeys.IS_LOGGED_IN, true);
//  }
//
//  @override
//  // TODO: implement getColor
//  Future<int> get color =>
//      Future.value(sharedPreferences.getInt(SharedPreferencesKeys.COLOR));
//
//  @override
//  // TODO: implement lang
//  Future<int> get lang => Future.value(sharedPreferences.getInt(SharedPreferencesKeys.LANGUAGE));
//}
