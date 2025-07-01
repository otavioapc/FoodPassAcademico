import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersFuncionarioRecord extends FirestoreRecord {
  UsersFuncionarioRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "funcionarioID" field.
  String? _funcionarioID;
  String get funcionarioID => _funcionarioID ?? '';
  bool hasFuncionarioID() => _funcionarioID != null;

  // "cpf" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  bool hasCpf() => _cpf != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "saldo" field.
  double? _saldo;
  double get saldo => _saldo ?? 0.0;
  bool hasSaldo() => _saldo != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _funcionarioID = snapshotData['funcionarioID'] as String?;
    _cpf = snapshotData['cpf'] as String?;
    _email = snapshotData['email'] as String?;
    _saldo = castToType<double>(snapshotData['saldo']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usersFuncionario');

  static Stream<UsersFuncionarioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersFuncionarioRecord.fromSnapshot(s));

  static Future<UsersFuncionarioRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UsersFuncionarioRecord.fromSnapshot(s));

  static UsersFuncionarioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsersFuncionarioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersFuncionarioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersFuncionarioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersFuncionarioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersFuncionarioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersFuncionarioRecordData({
  String? nome,
  String? funcionarioID,
  String? cpf,
  String? email,
  double? saldo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'funcionarioID': funcionarioID,
      'cpf': cpf,
      'email': email,
      'saldo': saldo,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersFuncionarioRecordDocumentEquality
    implements Equality<UsersFuncionarioRecord> {
  const UsersFuncionarioRecordDocumentEquality();

  @override
  bool equals(UsersFuncionarioRecord? e1, UsersFuncionarioRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.funcionarioID == e2?.funcionarioID &&
        e1?.cpf == e2?.cpf &&
        e1?.email == e2?.email &&
        e1?.saldo == e2?.saldo;
  }

  @override
  int hash(UsersFuncionarioRecord? e) => const ListEquality()
      .hash([e?.nome, e?.funcionarioID, e?.cpf, e?.email, e?.saldo]);

  @override
  bool isValidKey(Object? o) => o is UsersFuncionarioRecord;
}
