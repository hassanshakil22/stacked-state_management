import 'package:stacked/stacked.dart';
import 'package:state_management/app/app.locator.dart';
import 'package:state_management/services/counter_service.dart';

class ProfileViewModel extends BaseViewModel {
  CounterService counterService = locator<CounterService>();
  int get counter => counterService.counter;

  addvalue() {
    counterService.addCounterValue();

    rebuildUi();
  }

  onmodelReady() {
    counterService.addListener(notifyListeners);
  }
}
