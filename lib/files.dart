import 'dart:io';

/// Generates a file with the given [name].
/// Method to generate a file
void generateFile(String name) {
  // Create a File object with the given name and path
  File fileName = File('$name/index.dart');

  // Initialize a variable to store the content of the file
  String content = "";

  // Check the value of the name parameter using a switch statement
  switch (name) {
    // If name is 'app', set the content variable with specific comments
    case 'app':
      content =
          "// export 'repository/name_file.dart';\n// export 'modules/name_file.dart';\n// export 'data/name_file.dart';";
      break;

    // For any other name, set the content variable with a generic comment
    default:
      content = "// export 'file_name.dart' ";
  }

  // Check if the file already exists
  if (!fileName.existsSync()) {
    // If the file doesn't exist, create it and its parent directories
    fileName.createSync(recursive: true);

    // Write the content to the file
    fileName.writeAsStringSync(content);

    // Print a success message
    print('File $fileName created successfully');
  } else {
    // If the file already exists, print a message
    print('File $fileName already exists');
  }
}
