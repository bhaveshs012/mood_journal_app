import 'package:appwrite/appwrite.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppwriteClientService {
  //* Private Constructor for Singleton Design Pattern

  static final AppwriteClientService _instance =
      AppwriteClientService._internal();

  late final Client client;
  late final Account account;

  //* Always returns the same instance
  factory AppwriteClientService() => _instance;

  AppwriteClientService._internal() {
    client = Client()
        .setEndpoint(dotenv.env['APPWRITE_PROJECT_ID'].toString())
        .setProject(dotenv.env['APPWRITE_API_ENDPOINT'].toString());
    account = Account(client);
  }
}
