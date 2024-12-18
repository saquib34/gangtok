import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/api_requests/api_manager.dart';
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

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _emailSignIn = prefs.getString('ff_emailSignIn') ?? _emailSignIn;
    });
    _safeInit(() {
      _allTestcategory =
          prefs.getString('ff_allTestcategory') ?? _allTestcategory;
    });
    _safeInit(() {
      _selectedPage = prefs.getString('ff_selectedPage') ?? _selectedPage;
    });
    _safeInit(() {
      _grandTotal = prefs.getDouble('ff_grandTotal') ?? _grandTotal;
    });
    _safeInit(() {
      _totalitems = prefs.getInt('ff_totalitems') ?? _totalitems;
    });
    _safeInit(() {
      _sortBy = prefs.getString('ff_sortBy') ?? _sortBy;
    });
    _safeInit(() {
      _discount = prefs.getString('ff_discount') ?? _discount;
    });
    _safeInit(() {
      _onDiscount = prefs.getBool('ff_onDiscount') ?? _onDiscount;
    });
    _safeInit(() {
      _searchTerm = prefs.getString('ff_searchTerm') ?? _searchTerm;
    });
    _safeInit(() {
      _price = prefs.getDouble('ff_price') ?? _price;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _emailSignIn = '';
  String get emailSignIn => _emailSignIn;
  set emailSignIn(String value) {
    _emailSignIn = value;
    prefs.setString('ff_emailSignIn', value);
  }

  bool _home = false;
  bool get home => _home;
  set home(bool value) {
    _home = value;
  }

  bool _notifications = false;
  bool get notifications => _notifications;
  set notifications(bool value) {
    _notifications = value;
  }

  bool _orders = false;
  bool get orders => _orders;
  set orders(bool value) {
    _orders = value;
  }

  bool _profile = false;
  bool get profile => _profile;
  set profile(bool value) {
    _profile = value;
  }

  String _allTestcategory = '';
  String get allTestcategory => _allTestcategory;
  set allTestcategory(String value) {
    _allTestcategory = value;
    prefs.setString('ff_allTestcategory', value);
  }

  String _selectedPage = '';
  String get selectedPage => _selectedPage;
  set selectedPage(String value) {
    _selectedPage = value;
    prefs.setString('ff_selectedPage', value);
  }

  double _grandTotal = 0.0;
  double get grandTotal => _grandTotal;
  set grandTotal(double value) {
    _grandTotal = value;
    prefs.setDouble('ff_grandTotal', value);
  }

  int _totalitems = 0;
  int get totalitems => _totalitems;
  set totalitems(int value) {
    _totalitems = value;
    prefs.setInt('ff_totalitems', value);
  }

  bool _isSearch = false;
  bool get isSearch => _isSearch;
  set isSearch(bool value) {
    _isSearch = value;
  }

  String _sortBy = '';
  String get sortBy => _sortBy;
  set sortBy(String value) {
    _sortBy = value;
    prefs.setString('ff_sortBy', value);
  }

  String _discount = '';
  String get discount => _discount;
  set discount(String value) {
    _discount = value;
    prefs.setString('ff_discount', value);
  }

  bool _onDiscount = false;
  bool get onDiscount => _onDiscount;
  set onDiscount(bool value) {
    _onDiscount = value;
    prefs.setBool('ff_onDiscount', value);
  }

  bool _filter = false;
  bool get filter => _filter;
  set filter(bool value) {
    _filter = value;
  }

  String _searchTerm = '';
  String get searchTerm => _searchTerm;
  set searchTerm(String value) {
    _searchTerm = value;
    prefs.setString('ff_searchTerm', value);
  }

  double _price = 0.0;
  double get price => _price;
  set price(double value) {
    _price = value;
    prefs.setDouble('ff_price', value);
  }

  List<String> _testName = [];
  List<String> get testName => _testName;
  set testName(List<String> value) {
    _testName = value;
  }

  void addToTestName(String value) {
    testName.add(value);
  }

  void removeFromTestName(String value) {
    testName.remove(value);
  }

  void removeAtIndexFromTestName(int index) {
    testName.removeAt(index);
  }

  void updateTestNameAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    testName[index] = updateFn(_testName[index]);
  }

  void insertAtIndexInTestName(int index, String value) {
    testName.insert(index, value);
  }

  List<double> _testPrices = [];
  List<double> get testPrices => _testPrices;
  set testPrices(List<double> value) {
    _testPrices = value;
  }

  void addToTestPrices(double value) {
    testPrices.add(value);
  }

  void removeFromTestPrices(double value) {
    testPrices.remove(value);
  }

  void removeAtIndexFromTestPrices(int index) {
    testPrices.removeAt(index);
  }

  void updateTestPricesAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    testPrices[index] = updateFn(_testPrices[index]);
  }

  void insertAtIndexInTestPrices(int index, double value) {
    testPrices.insert(index, value);
  }

  List<String> _testImages = [];
  List<String> get testImages => _testImages;
  set testImages(List<String> value) {
    _testImages = value;
  }

  void addToTestImages(String value) {
    testImages.add(value);
  }

  void removeFromTestImages(String value) {
    testImages.remove(value);
  }

  void removeAtIndexFromTestImages(int index) {
    testImages.removeAt(index);
  }

  void updateTestImagesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    testImages[index] = updateFn(_testImages[index]);
  }

  void insertAtIndexInTestImages(int index, String value) {
    testImages.insert(index, value);
  }

  List<DocumentReference> _cart = [];
  List<DocumentReference> get cart => _cart;
  set cart(List<DocumentReference> value) {
    _cart = value;
  }

  void addToCart(DocumentReference value) {
    cart.add(value);
  }

  void removeFromCart(DocumentReference value) {
    cart.remove(value);
  }

  void removeAtIndexFromCart(int index) {
    cart.removeAt(index);
  }

  void updateCartAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    cart[index] = updateFn(_cart[index]);
  }

  void insertAtIndexInCart(int index, DocumentReference value) {
    cart.insert(index, value);
  }
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
