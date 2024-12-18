import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InventoryRecord extends FirestoreRecord {
  InventoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "inventory_name" field.
  String? _inventoryName;
  String get inventoryName => _inventoryName ?? '';
  bool hasInventoryName() => _inventoryName != null;

  // "inventory_image" field.
  String? _inventoryImage;
  String get inventoryImage => _inventoryImage ?? '';
  bool hasInventoryImage() => _inventoryImage != null;

  // "inventory_price" field.
  double? _inventoryPrice;
  double get inventoryPrice => _inventoryPrice ?? 0.0;
  bool hasInventoryPrice() => _inventoryPrice != null;

  // "inventory_image2" field.
  String? _inventoryImage2;
  String get inventoryImage2 => _inventoryImage2 ?? '';
  bool hasInventoryImage2() => _inventoryImage2 != null;

  // "inventory_image3" field.
  String? _inventoryImage3;
  String get inventoryImage3 => _inventoryImage3 ?? '';
  bool hasInventoryImage3() => _inventoryImage3 != null;

  // "top_selling" field.
  bool? _topSelling;
  bool get topSelling => _topSelling ?? false;
  bool hasTopSelling() => _topSelling != null;

  // "new_in" field.
  bool? _newIn;
  bool get newIn => _newIn ?? false;
  bool hasNewIn() => _newIn != null;

  // "categories" field.
  String? _categories;
  String get categories => _categories ?? '';
  bool hasCategories() => _categories != null;

  // "inventory_testparameters" field.
  String? _inventoryTestparameters;
  String get inventoryTestparameters => _inventoryTestparameters ?? '';
  bool hasInventoryTestparameters() => _inventoryTestparameters != null;

  // "sellers_ref" field.
  DocumentReference? _sellersRef;
  DocumentReference? get sellersRef => _sellersRef;
  bool hasSellersRef() => _sellersRef != null;

  // "wishlisters" field.
  List<DocumentReference>? _wishlisters;
  List<DocumentReference> get wishlisters => _wishlisters ?? const [];
  bool hasWishlisters() => _wishlisters != null;

  // "all_tests" field.
  bool? _allTests;
  bool get allTests => _allTests ?? false;
  bool hasAllTests() => _allTests != null;

  // "test_heading" field.
  String? _testHeading;
  String get testHeading => _testHeading ?? '';
  bool hasTestHeading() => _testHeading != null;

  // "onDiscount" field.
  String? _onDiscount;
  String get onDiscount => _onDiscount ?? '';
  bool hasOnDiscount() => _onDiscount != null;

  // "filter" field.
  String? _filter;
  String get filter => _filter ?? '';
  bool hasFilter() => _filter != null;

  // "get_reports" field.
  String? _getReports;
  String get getReports => _getReports ?? '';
  bool hasGetReports() => _getReports != null;

  // "age_recomended" field.
  String? _ageRecomended;
  String get ageRecomended => _ageRecomended ?? '';
  bool hasAgeRecomended() => _ageRecomended != null;

  // "gender_recommended" field.
  String? _genderRecommended;
  String get genderRecommended => _genderRecommended ?? '';
  bool hasGenderRecommended() => _genderRecommended != null;

  void _initializeFields() {
    _inventoryName = snapshotData['inventory_name'] as String?;
    _inventoryImage = snapshotData['inventory_image'] as String?;
    _inventoryPrice = castToType<double>(snapshotData['inventory_price']);
    _inventoryImage2 = snapshotData['inventory_image2'] as String?;
    _inventoryImage3 = snapshotData['inventory_image3'] as String?;
    _topSelling = snapshotData['top_selling'] as bool?;
    _newIn = snapshotData['new_in'] as bool?;
    _categories = snapshotData['categories'] as String?;
    _inventoryTestparameters =
        snapshotData['inventory_testparameters'] as String?;
    _sellersRef = snapshotData['sellers_ref'] as DocumentReference?;
    _wishlisters = getDataList(snapshotData['wishlisters']);
    _allTests = snapshotData['all_tests'] as bool?;
    _testHeading = snapshotData['test_heading'] as String?;
    _onDiscount = snapshotData['onDiscount'] as String?;
    _filter = snapshotData['filter'] as String?;
    _getReports = snapshotData['get_reports'] as String?;
    _ageRecomended = snapshotData['age_recomended'] as String?;
    _genderRecommended = snapshotData['gender_recommended'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('inventory');

  static Stream<InventoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InventoryRecord.fromSnapshot(s));

  static Future<InventoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InventoryRecord.fromSnapshot(s));

  static InventoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InventoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InventoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InventoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InventoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InventoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInventoryRecordData({
  String? inventoryName,
  String? inventoryImage,
  double? inventoryPrice,
  String? inventoryImage2,
  String? inventoryImage3,
  bool? topSelling,
  bool? newIn,
  String? categories,
  String? inventoryTestparameters,
  DocumentReference? sellersRef,
  bool? allTests,
  String? testHeading,
  String? onDiscount,
  String? filter,
  String? getReports,
  String? ageRecomended,
  String? genderRecommended,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'inventory_name': inventoryName,
      'inventory_image': inventoryImage,
      'inventory_price': inventoryPrice,
      'inventory_image2': inventoryImage2,
      'inventory_image3': inventoryImage3,
      'top_selling': topSelling,
      'new_in': newIn,
      'categories': categories,
      'inventory_testparameters': inventoryTestparameters,
      'sellers_ref': sellersRef,
      'all_tests': allTests,
      'test_heading': testHeading,
      'onDiscount': onDiscount,
      'filter': filter,
      'get_reports': getReports,
      'age_recomended': ageRecomended,
      'gender_recommended': genderRecommended,
    }.withoutNulls,
  );

  return firestoreData;
}

class InventoryRecordDocumentEquality implements Equality<InventoryRecord> {
  const InventoryRecordDocumentEquality();

  @override
  bool equals(InventoryRecord? e1, InventoryRecord? e2) {
    const listEquality = ListEquality();
    return e1?.inventoryName == e2?.inventoryName &&
        e1?.inventoryImage == e2?.inventoryImage &&
        e1?.inventoryPrice == e2?.inventoryPrice &&
        e1?.inventoryImage2 == e2?.inventoryImage2 &&
        e1?.inventoryImage3 == e2?.inventoryImage3 &&
        e1?.topSelling == e2?.topSelling &&
        e1?.newIn == e2?.newIn &&
        e1?.categories == e2?.categories &&
        e1?.inventoryTestparameters == e2?.inventoryTestparameters &&
        e1?.sellersRef == e2?.sellersRef &&
        listEquality.equals(e1?.wishlisters, e2?.wishlisters) &&
        e1?.allTests == e2?.allTests &&
        e1?.testHeading == e2?.testHeading &&
        e1?.onDiscount == e2?.onDiscount &&
        e1?.filter == e2?.filter &&
        e1?.getReports == e2?.getReports &&
        e1?.ageRecomended == e2?.ageRecomended &&
        e1?.genderRecommended == e2?.genderRecommended;
  }

  @override
  int hash(InventoryRecord? e) => const ListEquality().hash([
        e?.inventoryName,
        e?.inventoryImage,
        e?.inventoryPrice,
        e?.inventoryImage2,
        e?.inventoryImage3,
        e?.topSelling,
        e?.newIn,
        e?.categories,
        e?.inventoryTestparameters,
        e?.sellersRef,
        e?.wishlisters,
        e?.allTests,
        e?.testHeading,
        e?.onDiscount,
        e?.filter,
        e?.getReports,
        e?.ageRecomended,
        e?.genderRecommended
      ]);

  @override
  bool isValidKey(Object? o) => o is InventoryRecord;
}
