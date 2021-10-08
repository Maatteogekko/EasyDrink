import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class SembastDatabase {
  late Database _instance;
  Database get instance => _instance;

  bool _hasBeenInitialized = false;
  bool get hasBeenInitialized => _hasBeenInitialized;

  Future<void> init() async {
    if (_hasBeenInitialized) return;

    final dbDirectory = await getApplicationDocumentsDirectory();
    dbDirectory.create(recursive: true);
    final dbPath = join(dbDirectory.path, 'db.sembast');
    _instance = await databaseFactoryIo.openDatabase(dbPath);

    // ! this needs to be the last instruction, otherwise code relying on this variable being true when the db is fully initialized may break
    _hasBeenInitialized = true;
  }
}
