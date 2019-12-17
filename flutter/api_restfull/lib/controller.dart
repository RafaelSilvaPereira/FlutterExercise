import 'dart:io';

import 'package:aqueduct/aqueduct.dart';

class ControllerX extends ResourceController {
  ControllerX() {
    super.acceptedContentTypes = [ContentType.json];
  }

  @Operation.get()
  Future<Response> getAllToDos() async {
    print("OK");
    return Response.ok("TESTE");
  }
}
