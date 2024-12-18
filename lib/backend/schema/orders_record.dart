import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "buyer" field.
  DocumentReference? _buyer;
  DocumentReference? get buyer => _buyer;
  bool hasBuyer() => _buyer != null;

  // "total_items" field.
  int? _totalItems;
  int get totalItems => _totalItems ?? 0;
  bool hasTotalItems() => _totalItems != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "order_no" field.
  String? _orderNo;
  String get orderNo => _orderNo ?? '';
  bool hasOrderNo() => _orderNo != null;

  // "total_price" field.
  double? _totalPrice;
  double get totalPrice => _totalPrice ?? 0.0;
  bool hasTotalPrice() => _totalPrice != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "testOrdered" field.
  DocumentReference? _testOrdered;
  DocumentReference? get testOrdered => _testOrdered;
  bool hasTestOrdered() => _testOrdered != null;

  void _initializeFields() {
    _buyer = snapshotData['buyer'] as DocumentReference?;
    _totalItems = castToType<int>(snapshotData['total_items']);
    _date = snapshotData['date'] as DateTime?;
    _orderNo = snapshotData['order_no'] as String?;
    _totalPrice = castToType<double>(snapshotData['total_price']);
    _status = snapshotData['status'] as String?;
    _testOrdered = snapshotData['testOrdered'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  DocumentReference? buyer,
  int? totalItems,
  DateTime? date,
  String? orderNo,
  double? totalPrice,
  String? status,
  DocumentReference? testOrdered,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'buyer': buyer,
      'total_items': totalItems,
      'date': date,
      'order_no': orderNo,
      'total_price': totalPrice,
      'status': status,
      'testOrdered': testOrdered,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    return e1?.buyer == e2?.buyer &&
        e1?.totalItems == e2?.totalItems &&
        e1?.date == e2?.date &&
        e1?.orderNo == e2?.orderNo &&
        e1?.totalPrice == e2?.totalPrice &&
        e1?.status == e2?.status &&
        e1?.testOrdered == e2?.testOrdered;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.buyer,
        e?.totalItems,
        e?.date,
        e?.orderNo,
        e?.totalPrice,
        e?.status,
        e?.testOrdered
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
