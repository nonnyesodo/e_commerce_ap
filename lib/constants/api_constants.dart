class Apis {
  static const String baseUrl = 'https://guru.alwaysdata.net/craftman/api/v1';

}

class ApiHeaders {
  static const unaunthenticatedHeader = {
    'Content-Type': 'application/json',
    'Accept': 'application/json'
  };

  static final aunthenticatedHeader = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    // 'Authorization': 'Bearer $bearerToken'
  };
}
