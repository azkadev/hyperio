export "package:hyperio/core/io/io.dart"
    if (dart.library.html) "web/web.dart"
    if (dart.library.js) "web/web.dart"
    if (dart.library.js_interop) "web/web.dart";

// export "web/web.dart";
