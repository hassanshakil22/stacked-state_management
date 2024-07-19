import 'package:stacked/stacked.dart';
import 'package:state_management/app/app.locator.dart';
import 'package:state_management/services/counter_service.dart';

class HomeViewModel extends BaseViewModel {
  CounterService counterService = locator<CounterService>();
  int get counter => counterService.counter;
  addvalue() {
    counterService.addCounterValue();
    rebuildUi();
  }

  onModelReady() {
    counterService.addListener(notifyListeners);
  }
}
