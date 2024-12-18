import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentRecord extends FirestoreRecord {
  PaymentRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "cardholder_name" field.
  String? _cardholderName;
  String get cardholderName => _cardholderName ?? '';
  bool hasCardholderName() => _cardholderName != null;

  // "ccv" field.
  String? _ccv;
  String get ccv => _ccv ?? '';
  bool hasCcv() => _ccv != null;

  // "exp" field.
  DateTime? _exp;
  DateTime? get exp => _exp;
  bool hasExp() => _exp != null;

  // "cardholder_number" field.
  String? _cardholderNumber;
  String get cardholderNumber => _cardholderNumber ?? '';
  bool hasCardholderNumber() => _cardholderNumber != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  void _initializeFields() {
    _cardholderName = snapshotData['cardholder_name'] as String?;
    _ccv = snapshotData['ccv'] as String?;
    _exp = snapshotData['exp'] as DateTime?;
    _cardholderNumber = snapshotData['cardholder_number'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _address = snapshotData['address'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('payment');

  static Stream<PaymentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PaymentRecord.fromSnapshot(s));

  static Future<PaymentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PaymentRecord.fromSnapshot(s));

  static PaymentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PaymentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PaymentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PaymentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PaymentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PaymentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPaymentRecordData({
  String? cardholderName,
  String? ccv,
  DateTime? exp,
  String? cardholderNumber,
  DocumentReference? user,
  String? address,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cardholder_name': cardholderName,
      'ccv': ccv,
      'exp': exp,
      'cardholder_number': cardholderNumber,
      'user': user,
      'address': address,
    }.withoutNulls,
  );

  return firestoreData;
}

class PaymentRecordDocumentEquality implements Equality<PaymentRecord> {
  const PaymentRecordDocumentEquality();

  @override
  bool equals(PaymentRecord? e1, PaymentRecord? e2) {
    return e1?.cardholderName == e2?.cardholderName &&
        e1?.ccv == e2?.ccv &&
        e1?.exp == e2?.exp &&
        e1?.cardholderNumber == e2?.cardholderNumber &&
        e1?.user == e2?.user &&
        e1?.address == e2?.address;
  }

  @override
  int hash(PaymentRecord? e) => const ListEquality().hash([
        e?.cardholderName,
        e?.ccv,
        e?.exp,
        e?.cardholderNumber,
        e?.user,
        e?.address
      ]);

  @override
  bool isValidKey(Object? o) => o is PaymentRecord;
}
