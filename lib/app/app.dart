import 'package:stacked/stacked_annotations.dart';
import 'package:state_management/services/counter_service.dart';

@StackedApp(routes: [], dependencies: [
  Singleton(classType: CounterService),
])
class App {}


//flutter pub run build_runner build run this command in terminal after adding any further dependencies and also the first time too