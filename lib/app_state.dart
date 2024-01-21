import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<String> _imagelist = [
    'https://img.freepik.com/premium-photo/supermarket-paper-bag-full-healthy-food_79782-1632.jpg?size=626&ext=jpg',
    'https://images.app.goo.gl/JupX4KMTWKbvbnFw8',
    'https://images.app.goo.gl/yjMRYzdpXjLURbw78'
  ];
  List<String> get imagelist => _imagelist;
  set imagelist(List<String> _value) {
    _imagelist = _value;
  }

  void addToImagelist(String _value) {
    _imagelist.add(_value);
  }

  void removeFromImagelist(String _value) {
    _imagelist.remove(_value);
  }

  void removeAtIndexFromImagelist(int _index) {
    _imagelist.removeAt(_index);
  }

  void updateImagelistAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _imagelist[_index] = updateFn(_imagelist[_index]);
  }

  void insertAtIndexInImagelist(int _index, String _value) {
    _imagelist.insert(_index, _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
