abstract class DataBaseRequest {
  static const String tableRole = 'Role';
  static const String tableUser = 'User';
  static const String tableKorzina = 'Korzina';
  static const String tableFavorite = 'Favorite';
  static const String tableCar = 'Car';
  static const String tableMark = 'Mark';
  static const String tableCarcass = 'Carcass';
  static const String tableCarColor = 'CarColor';
  static const String tableAvtVKorz = 'AvtVKorz';

  static const List<String> tableList = [
    tableRole,
    tableUser,
    tableKorzina,
    tableFavorite,
    tableCar,
    tableMark,
    tableCarcass,
    tableCarColor,
    tableAvtVKorz,
  ];
  static const List<String> tableCreateList = [
    _createTableRole,
    _createTableUser,
    _createTableKorzina,
    _createTableMark,
    _createTableCarcass,
    _createTableCarColor,
    _createTableAvtVKorz,
    _createTableCar,
    _createTableFavorite
  ];

  static const String _createTableRole = '''
  CREATE TABLE "$tableRole" (
    id INTEGER,
    role TEXT NOT NULL UNIQUE, 
    PRIMARY KEY("id" AUTOINCREMENT)
  )
''';

  static const String _createTableUser =
      'CREATE TABLE "$tableUser" ("id" INTEGER,"login" TEXT NOT NULL UNIQUE,"password" TEXT NOT NULL, "id_role" INTEGER NOT NULL, PRIMARY KEY("id" AUTOINCREMENT), FOREIGN KEY("id_role") REFERENCES "Role"("id"))';

  static const String _createTableKorzina =
      'CREATE TABLE "$tableKorzina" ("id" INTEGER, "summa_v_korzine" TEXT NOT NULL, "id_user" INTEGER NOT NULL, PRIMARY KEY("id" AUTOINCREMENT), FOREIGN KEY("id_user") REFERENCES "User"("id"))';

  static const String _createTableMark =
      'CREATE TABLE "$tableMark" ("id" INTEGER,"mark_name" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableCarcass =
      'CREATE TABLE "$tableCarcass" ("id" INTEGER,"name_carcass" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableCarColor =
      'CREATE TABLE "$tableCarColor" ("id" INTEGER,"car_color" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableAvtVKorz =
      'CREATE TABLE "$tableAvtVKorz" ("id" INTEGER,"kolichestvo" TEXT NOT NULL UNIQUE, "id_kod_korzini" INTEGER NOT NULL, "id_kod_auto" INTEGER NOT NULL, PRIMARY KEY("id" AUTOINCREMENT), FOREIGN KEY("id_kod_korzini") REFERENCES "$tableKorzina"("id"), FOREIGN KEY("id_kod_auto") REFERENCES "$tableCar"("id"))';

  static const String _createTableCar =
      'CREATE TABLE "$tableCar" ("id" INTEGER, "car_cost" DECIMAL NOT NULL, "car_year" TEXT NOT NULL, "car_mark_id" INTEGER NOT NULL, "car_carcass_id" INTEGER NOT NULL, "car_color_id" INTEGER NOT NULL, PRIMARY KEY("id" AUTOINCREMENT), FOREIGN KEY("car_mark_id") REFERENCES "$tableMark"("id"), FOREIGN KEY("car_carcass_id") REFERENCES "$tableCarcass"("id"), FOREIGN KEY("car_color_id") REFERENCES "$tableCarColor"("id"))';

  static const String _createTableFavorite =
      'CREATE TABLE "$tableFavorite" ("id" INTEGER, "favorite_car_id" INTEGER NOT NULL, "favorite_user_id" INTEGER NOT NULL, PRIMARY KEY("id" AUTOINCREMENT), FOREIGN KEY("favorite_car_id") REFERENCES "$tableCar"("id"), FOREIGN KEY("favorite_user_id") REFERENCES "$tableUser"("id"))';

  static String deleteTable(String table) => 'DROP TABLE IF EXISTS $table';
}
