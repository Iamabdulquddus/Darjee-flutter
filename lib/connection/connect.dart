import 'package:mysql1/mysql1.dart';

class Connect {

  Connect._providerConstructor();
  static final Connect instance =  Connect._providerConstructor();

  Future<MySqlConnection> get connection async {
    var settings = ConnectionSettings(
        host: '192.168.1.6',
        port: 3306,
        user: 'User@1',
        password: 'User@1',
        db: 'new_darjee'
    );
    return await MySqlConnection.connect(settings);
  }



  static fetchDetails(String query) async {
    var connection = await instance.connection;
    return await connection.query(query);
  }

  static fetchCustomerDetails2(String query) async {
    var connection = await instance.connection;
    return await connection.query(query);
  }





}







