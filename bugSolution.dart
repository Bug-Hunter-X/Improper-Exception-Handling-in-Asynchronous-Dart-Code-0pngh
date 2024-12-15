```dart
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Process the data here
    } else {
      throw Exception('HTTP request failed with status: ${response.statusCode}');
    }
  } on SocketException catch (e) {
    print('No Internet connection: $e');
  } on FormatException catch (e) {
    print('Invalid data format: $e');
  } on Exception catch (e) {
    print('An unexpected error occurred: $e');
  } catch (e) {
    print('An unknown error occurred: $e');
  }
}
```