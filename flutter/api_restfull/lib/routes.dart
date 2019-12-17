import 'package:api_restfull/controller.dart';
import 'package:aqueduct/aqueduct.dart';

class MyRouter extends ApplicationChannel {
  @override
  Future prepare() async {
    logger.onRecord.listen(
        (rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));
  }

  @override
  Controller get entryPoint {
    final router = Router();

    return router.route("/teste/").link(() => ControllerX());
  }
}
