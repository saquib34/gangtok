import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddressRecord extends FirestoreRecord {
  AddressRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "street_address" field.
  String? _streetAddress;
  String get streetAddress => _streetAddress ?? '';
  bool hasStreetAddress() => _streetAddress != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "pincode" field.
  String? _pincode;
  String get pincode => _pincode ?? '';
  bool hasPincode() => _pincode != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _streetAddress = snapshotData['street_address'] as String?;
    _city = snapshotData['city'] as String?;
    _pincode = snapshotData['pincode'] as String?;
    _state = snapshotData['state'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('address');

  static Stream<AddressRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AddressRecord.fromSnapshot(s));

  static Future<AddressRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AddressRecord.fromSnapshot(s));

  static AddressRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AddressRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AddressRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AddressRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AddressRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AddressRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAddressRecordData({
  DocumentReference? user,
  String? streetAddress,
  String? city,
  String? pincode,
  String? state,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'street_address': streetAddress,
      'city': city,
      'pincode': pincode,
      'state': state,
    }.withoutNulls,
  );

  return firestoreData;
}

class AddressRecordDocumentEquality implements Equality<AddressRecord> {
  const AddressRecordDocumentEquality();

  @override
  bool equals(AddressRecord? e1, AddressRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.streetAddress == e2?.streetAddress &&
        e1?.city == e2?.city &&
        e1?.pincode == e2?.pincode &&
        e1?.state == e2?.state;
  }

  @override
  int hash(AddressRecord? e) => const ListEquality()
      .hash([e?.user, e?.streetAddress, e?.city, e?.pincode, e?.state]);

  @override
  bool isValidKey(Object? o) => o is AddressRecord;
}
