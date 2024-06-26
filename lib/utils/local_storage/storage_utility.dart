import 'package:get_storage/get_storage.dart';


class TLLocalStorage{
  static final TLLocalStorage _instance = TLLocalStorage._internal();

  factory TLLocalStorage(){
    return _instance;
  }

  TLLocalStorage._internal();

  final _storage = GetStorage();


  // Generic method to save data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  // Generic method to read data
  T? readData<T>(String key){
    return _storage.read<T>(key);
  }

  // Generic method to remove data
  Future<void> removeData(String key) async{
    await _storage.remove(key);
  }

  // Clear all data in Storage
  Future<void> ClearAll() async{
      await _storage.erase();
  }
}

/// *** *** *** *** *** Example *** *** *** *** *** ///

/// LocalStorage localStorage = LocalStorage();
///
/// // Save data
/// localStorage.saveData('username', 'JohnDoe');
///
/// // Read data
/// String? username = localStorage.readData<String>('username');
/// print('Username: $username'); // Output: Username: JohnDoe
///
/// // Remove data
/// localStorage.removeData('username');
///
/// // Clear all data
/// localStorage.clearAll();