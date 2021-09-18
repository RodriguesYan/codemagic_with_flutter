import 'package:ci_cd/environment.dart';
import 'package:ci_cd/main__common.dart';

Future<void> main() async {
  await mainCommon(Environment.dev);
}
