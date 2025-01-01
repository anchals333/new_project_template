import 'package:new_project/app/environment/production_environment.dart';
import 'package:new_project/app/view/app.dart';
import 'package:new_project/bootstrap.dart';

Future<void> main() async {
  await bootstrap(builder: App.new, environment: ProductionEnvironment());
}
