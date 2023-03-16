import 'package:gsheets/gsheets.dart';

class GoogleSheetsApi {
  // create credetials
  static const _credentials = r'''
  {
  "type": "service_account",
  "project_id": "flutter-gsheet-tutorial-379913",
  "private_key_id": "34da16692eb7357a0c00e93a73368cb37ad8fc6a",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCtWl5pBvBZzLET\nBaosmhO3FKHhWUP8uzpajxa2C4z0CmSmDVQ92KlJepWaN/Mf0CgfNUXZ7KfxeM42\n4VlZC1wFiz/ekSaonAEf2L83CWccajJu8z/DI2hEqsi0SXJ6Ev66rYZhtYBEKR9J\njwse+HO65hKcd6XaMPDX9EWbLdM/rfIdwxGpi+u0pDmzdxyaNb9Tiwkc2eOkjXEI\n3Ur4AwgYT5NSKi4oGVvpuiIWXHxNbEU/PjLhwqxuUWVBK878tFFub8E5xwyzXegJ\nDPN8siocT2lzPvd9IXUK/Y9dbZnL4GATQYhswwm/iasH3mfGxBM5PRw9CJaOZeCQ\nL/T+eaCpAgMBAAECggEACG9bB8k/+16dgOfkUwLRmPy9zJ/x/LjaKuz/6srbT5u3\nMD8IdI1+wQXgLv6h8sHj8eRbe/lVu44vfhl2UNdRjEqfLBWzHTBL33zT/0g9ZmT/\nIB7vtm99uuRLm1onjLn34xdC4juSNU0QRnKu8S30zIkZ1PQbrIOUO5+ZZTwNJZxy\nbHoLuxVwH7jo4Sfv4t6mI+/G3O+B1XOY143YjrSmSQNVfVSTJLgZ0pVrU/8orDht\nh3+f/kABfel5Tqjgq8eRPY4I8Bi+Tl00z/dmuEQFf2DAk245X48j0+BNGz6/LBr7\n9sOYNrcHttgo3ZVX491fj459274rXQs9jilT25yNsQKBgQDaq22JDRCeqTPoHwaN\ngQh3pphi7FY4fnMSLxjIy8sI1/++m37DwEVzbYdwsKw4rOrDRQlq3myy45d2XVgD\nJWQ0aFK3qX/mYps61ly+IDNe66Ij2xu1W+uKrulg5sgbFMhSCm+9Um07L8xTbT8o\nqTlRW4H4ssCTxVE0rluCL3f77wKBgQDK8nT8epBO8xf/2c5rVhec4nSwqGKoJWrS\nacSkapi3QmTb+XlkBam1mtYO8SyEgaBNJFukLt1mI42TLt070l67PlS/NwQFq0hc\nt9OsF/L3loD2MV7HSPO1PZkmuMWypktSE9gejNHiJEiD66/ThClmBiI+8OSk3nUw\nkYilXMN05wKBgQCnEA3RhW/LKA6GKx4AgjKL53XJLjL5WnJj1COlVT27dfroDzic\nKYtmEqpFiFUrv8Bki5wUT/bP/V28irgxPyH9gC6iLxeOVouuOhQFFejpfjEUH9Rd\njOq5u8SFygvb1NbvBxYzmIPnki8TFgYI9LDb3YPBFCBZRYkzLHqxTb7ndQKBgFkD\nmU44T91hAHDGzqQDod288eOeJ4+KwdzCaW6YFp2isGxPcu/tD+/IlwT8wULpPC85\nuDw+Ffu7slgRIRYhAk3sW+12qvv1kYqhUmVUJ8xypePV6bVNCR/AgdEbEBN4nubE\nL3HO4CvpMCk0ke0bNbE7FYA31oF91TbVTnMBSfWXAoGAD6zTR9D/nu5FjNAuxn0P\n6WrQOE+qUj+p0ygRINzB9S3BB5n+M/5TDquzRTm0zTiokflDxlyFiwSOC9OWeH/c\nFw2KjaH5vykby2gxczqk6cSZ1tA77T6E9JxyUlCYsXa+YtODIyC7FbMnria3A+Qc\nbVs4uoUU5mgytXrOO1bFOcw=\n-----END PRIVATE KEY-----\n",
  "client_email": "flutter-gsheets@flutter-gsheet-tutorial-379913.iam.gserviceaccount.com",
  "client_id": "113995490048352208923",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/flutter-gsheets%40flutter-gsheet-tutorial-379913.iam.gserviceaccount.com"
}
''';

//set up and connect to the spreadsheet
  static final _spreadsheetId = '1XdrDPSUZeCzQSZcb2jNZMyVMXCy_goCkV4FlbgyUzXc';
  static final _gsheets = GSheets(_credentials);
  static Worksheet? _worksheet;

  //initialise the spreadsheet!
  Future init() async {
    final ss = await _gsheets.spreadsheet(_spreadsheetId);
    _worksheet = ss.worksheetByTitle('Worksheet1');
  }
}
