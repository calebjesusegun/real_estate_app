import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {

  int _currentNavBarIndex = 2;
  int get currentNavBarIndex => _currentNavBarIndex;

  updateCurrentIndex(int index){
    _currentNavBarIndex = index;
    rebuildUi();
  }

}
