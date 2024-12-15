```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Process the data here
    } else {
      // Handle error here, but don't rethrow
    }
  } catch (e) {
    // This catch block will catch any error from the try block
    // including errors from the http.get method or from processing the data
    print('Error fetching data: $e');
  }
}
```