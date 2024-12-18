import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartRecord extends FirestoreRecord {
  CartRecord._(
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

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "buyers_ref" field.
  DocumentReference? _buyersRef;
  DocumentReference? get buyersRef => _buyersRef;
  bool hasBuyersRef() => _buyersRef != null;

  // "sellers_ref" field.
  DocumentReference? _sellersRef;
  DocumentReference? get sellersRef => _sellersRef;
  bool hasSellersRef() => _sellersRef != null;

  void _initializeFields() {
    _inventoryName = snapshotData['inventory_name'] as String?;
    _inventoryImage = snapshotData['inventory_image'] as String?;
    _inventoryPrice = castToType<double>(snapshotData['inventory_price']);
    _date = snapshotData['date'] as DateTime?;
    _buyersRef = snapshotData['buyers_ref'] as DocumentReference?;
    _sellersRef = snapshotData['sellers_ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cart');

  static Stream<CartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartRecord.fromSnapshot(s));

  static Future<CartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartRecord.fromSnapshot(s));

  static CartRecord fromSnapshot(DocumentSnapshot snapshot) => CartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartRecordData({
  String? inventoryName,
  String? inventoryImage,
  double? inventoryPrice,
  DateTime? date,
  DocumentReference? buyersRef,
  DocumentReference? sellersRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'inventory_name': inventoryName,
      'inventory_image': inventoryImage,
      'inventory_price': inventoryPrice,
      'date': date,
      'buyers_ref': buyersRef,
      'sellers_ref': sellersRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartRecordDocumentEquality implements Equality<CartRecord> {
  const CartRecordDocumentEquality();

  @override
  bool equals(CartRecord? e1, CartRecord? e2) {
    return e1?.inventoryName == e2?.inventoryName &&
        e1?.inventoryImage == e2?.inventoryImage &&
        e1?.inventoryPrice == e2?.inventoryPrice &&
        e1?.date == e2?.date &&
        e1?.buyersRef == e2?.buyersRef &&
        e1?.sellersRef == e2?.sellersRef;
  }

  @override
  int hash(CartRecord? e) => const ListEquality().hash([
        e?.inventoryName,
        e?.inventoryImage,
        e?.inventoryPrice,
        e?.date,
        e?.buyersRef,
        e?.sellersRef
      ]);

  @override
  bool isValidKey(Object? o) => o is CartRecord;
}
