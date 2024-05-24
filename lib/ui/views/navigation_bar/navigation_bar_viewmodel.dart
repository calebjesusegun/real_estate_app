import 'package:stacked/stacked.dart';

class NavigationBarViewModel extends BaseViewModel {

  int _selectedIndex = 2;
  int get selectedIndex => _selectedIndex;

  updateIndex(int index){
      _selectedIndex = index;
      rebuildUi();
  }
}
