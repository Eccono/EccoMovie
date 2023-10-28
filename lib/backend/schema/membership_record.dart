import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MembershipRecord extends FirestoreRecord {
  MembershipRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "membershipId" field.
  String? _membershipId;
  String get membershipId => _membershipId ?? '';
  bool hasMembershipId() => _membershipId != null;

  // "startDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "endDate" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _membershipId = snapshotData['membershipId'] as String?;
    _startDate = snapshotData['startDate'] as DateTime?;
    _endDate = snapshotData['endDate'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('membership')
          : FirebaseFirestore.instance.collectionGroup('membership');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('membership').doc();

  static Stream<MembershipRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MembershipRecord.fromSnapshot(s));

  static Future<MembershipRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MembershipRecord.fromSnapshot(s));

  static MembershipRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MembershipRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MembershipRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MembershipRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MembershipRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MembershipRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMembershipRecordData({
  String? membershipId,
  DateTime? startDate,
  DateTime? endDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'membershipId': membershipId,
      'startDate': startDate,
      'endDate': endDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class MembershipRecordDocumentEquality implements Equality<MembershipRecord> {
  const MembershipRecordDocumentEquality();

  @override
  bool equals(MembershipRecord? e1, MembershipRecord? e2) {
    return e1?.membershipId == e2?.membershipId &&
        e1?.startDate == e2?.startDate &&
        e1?.endDate == e2?.endDate;
  }

  @override
  int hash(MembershipRecord? e) =>
      const ListEquality().hash([e?.membershipId, e?.startDate, e?.endDate]);

  @override
  bool isValidKey(Object? o) => o is MembershipRecord;
}
