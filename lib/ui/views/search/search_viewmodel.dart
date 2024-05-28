import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_utils.dart';

class SearchViewModel extends BaseViewModel {
  bool _isPriceSelected = false;
  bool get isPriceSelected => _isPriceSelected;

  void updatePrice() {
    _isPriceSelected = !_isPriceSelected;
    rebuildUi();
  }

  bool _isMapCreated = false;
  bool get isMapCreated => _isMapCreated;

  final Set<Marker> _markers = {};
  Set<Marker> get markers => _markers;

  void onMapCreated(GoogleMapController controller) {
    controller.setMapStyle(Utils.mapStyle);

    _isMapCreated = true;

    rebuildUi();
  }
}
