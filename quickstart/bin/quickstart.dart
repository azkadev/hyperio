
import 'dart:io';

import 'package:hyperio/core/core.dart' show Hyperio;
 

Future<String> ask({
  required String text,
}) async {
  while (true) {
    print("");

    stdout.write("${text}?: ");
    // print("${text}?: ");
    final String? input = stdin.readLineSync();
    if (input != null && input.trim().isNotEmpty) {
      return input.trim();
    }
  }
}

void main(List<String> args) async {
  print("start");
  final Hyperio hyperio = Hyperio();

  hyperio.ensureInitialized();

  // atur log menjadi 0
  // karena tidak mungkin akan log di production mode
  //
  hyperio.invokeSync({
    "@type": "setLogVerbosityLevel",
    "new_verbosity_level": 0,
  });

  hyperio.on("update", (Map update) async {
    print(update);
  });
 

  await hyperio.initialized();
  print("program started");
  final newClientId = hyperio.createClient();

  await hyperio.invoke({
    "@type": "getAuthorizationState",
    "@client_id": newClientId,
  });
}

