import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WishlistRecord extends FirestoreRecord {
  WishlistRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "product_price" field.
  double? _productPrice;
  double get productPrice => _productPrice ?? 0.0;
  bool hasProductPrice() => _productPrice != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "product_image" field.
  String? _productImage;
  String get productImage => _productImage ?? '';
  bool hasProductImage() => _productImage != null;

  // "categories" field.
  String? _categories;
  String get categories => _categories ?? '';
  bool hasCategories() => _categories != null;

  void _initializeFields() {
    _productName = snapshotData['product_name'] as String?;
    _productPrice = castToType<double>(snapshotData['product_price']);
    _user = snapshotData['user'] as DocumentReference?;
    _productImage = snapshotData['product_image'] as String?;
    _categories = snapshotData['categories'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('wishlist');

  static Stream<WishlistRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WishlistRecord.fromSnapshot(s));

  static Future<WishlistRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WishlistRecord.fromSnapshot(s));

  static WishlistRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WishlistRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WishlistRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WishlistRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WishlistRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WishlistRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWishlistRecordData({
  String? productName,
  double? productPrice,
  DocumentReference? user,
  String? productImage,
  String? categories,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'product_name': productName,
      'product_price': productPrice,
      'user': user,
      'product_image': productImage,
      'categories': categories,
    }.withoutNulls,
  );

  return firestoreData;
}

class WishlistRecordDocumentEquality implements Equality<WishlistRecord> {
  const WishlistRecordDocumentEquality();

  @override
  bool equals(WishlistRecord? e1, WishlistRecord? e2) {
    return e1?.productName == e2?.productName &&
        e1?.productPrice == e2?.productPrice &&
        e1?.user == e2?.user &&
        e1?.productImage == e2?.productImage &&
        e1?.categories == e2?.categories;
  }

  @override
  int hash(WishlistRecord? e) => const ListEquality().hash([
        e?.productName,
        e?.productPrice,
        e?.user,
        e?.productImage,
        e?.categories
      ]);

  @override
  bool isValidKey(Object? o) => o is WishlistRecord;
}
