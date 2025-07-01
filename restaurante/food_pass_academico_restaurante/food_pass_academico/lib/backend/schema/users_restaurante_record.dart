import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRestauranteRecord extends FirestoreRecord {
  UsersRestauranteRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "cnpj" field.
  String? _cnpj;
  String get cnpj => _cnpj ?? '';
  bool hasCnpj() => _cnpj != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  bool hasEndereco() => _endereco != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "restauranteID" field.
  String? _restauranteID;
  String get restauranteID => _restauranteID ?? '';
  bool hasRestauranteID() => _restauranteID != null;

  // "horarioAtendimento" field.
  String? _horarioAtendimento;
  String get horarioAtendimento => _horarioAtendimento ?? '';
  bool hasHorarioAtendimento() => _horarioAtendimento != null;

  void _initializeFields() {
    _cnpj = snapshotData['cnpj'] as String?;
    _endereco = snapshotData['endereco'] as String?;
    _nome = snapshotData['nome'] as String?;
    _restauranteID = snapshotData['restauranteID'] as String?;
    _horarioAtendimento = snapshotData['horarioAtendimento'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usersRestaurante');

  static Stream<UsersRestauranteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRestauranteRecord.fromSnapshot(s));

  static Future<UsersRestauranteRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UsersRestauranteRecord.fromSnapshot(s));

  static UsersRestauranteRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsersRestauranteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRestauranteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRestauranteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRestauranteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRestauranteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRestauranteRecordData({
  String? cnpj,
  String? endereco,
  String? nome,
  String? restauranteID,
  String? horarioAtendimento,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cnpj': cnpj,
      'endereco': endereco,
      'nome': nome,
      'restauranteID': restauranteID,
      'horarioAtendimento': horarioAtendimento,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRestauranteRecordDocumentEquality
    implements Equality<UsersRestauranteRecord> {
  const UsersRestauranteRecordDocumentEquality();

  @override
  bool equals(UsersRestauranteRecord? e1, UsersRestauranteRecord? e2) {
    return e1?.cnpj == e2?.cnpj &&
        e1?.endereco == e2?.endereco &&
        e1?.nome == e2?.nome &&
        e1?.restauranteID == e2?.restauranteID &&
        e1?.horarioAtendimento == e2?.horarioAtendimento;
  }

  @override
  int hash(UsersRestauranteRecord? e) => const ListEquality().hash(
      [e?.cnpj, e?.endereco, e?.nome, e?.restauranteID, e?.horarioAtendimento]);

  @override
  bool isValidKey(Object? o) => o is UsersRestauranteRecord;
}
