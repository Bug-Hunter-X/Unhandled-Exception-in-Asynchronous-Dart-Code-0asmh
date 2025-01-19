```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Correctly handle the response
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      // Handle non-200 status codes appropriately
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on SocketException catch (e) {
    // Handle socket exceptions specifically
    print('Socket exception: $e');
    // Perform appropriate retry logic or display a user-friendly message.
  } on FormatException catch (e) {
    // Handle JSON decoding errors
    print('JSON decoding error: $e');
    // Handle the error gracefully (e.g., show an error message)
  } catch (e) {
    // Handle other potential exceptions
    print('An unexpected error occurred: $e');
    // Implement appropriate error handling strategies
  }
}

void main() async {
  await fetchData();
  print('Data fetched successfully!');
}
```