import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PratosRecord extends FirestoreRecord {
  PratosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "ingredientes" field.
  String? _ingredientes;
  String get ingredientes => _ingredientes ?? '';
  bool hasIngredientes() => _ingredientes != null;

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  bool hasPreco() => _preco != null;

  // "promocao" field.
  bool? _promocao;
  bool get promocao => _promocao ?? false;
  bool hasPromocao() => _promocao != null;

  // "imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  bool hasImagem() => _imagem != null;

  // "restauranteID" field.
  String? _restauranteID;
  String get restauranteID => _restauranteID ?? '';
  bool hasRestauranteID() => _restauranteID != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _ingredientes = snapshotData['ingredientes'] as String?;
    _preco = castToType<double>(snapshotData['preco']);
    _promocao = snapshotData['promocao'] as bool?;
    _imagem = snapshotData['imagem'] as String?;
    _restauranteID = snapshotData['restauranteID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pratos');

  static Stream<PratosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PratosRecord.fromSnapshot(s));

  static Future<PratosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PratosRecord.fromSnapshot(s));

  static PratosRecord fromSnapshot(DocumentSnapshot snapshot) => PratosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PratosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PratosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PratosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PratosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPratosRecordData({
  String? nome,
  String? ingredientes,
  double? preco,
  bool? promocao,
  String? imagem,
  String? restauranteID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'ingredientes': ingredientes,
      'preco': preco,
      'promocao': promocao,
      'imagem': imagem,
      'restauranteID': restauranteID,
    }.withoutNulls,
  );

  return firestoreData;
}

class PratosRecordDocumentEquality implements Equality<PratosRecord> {
  const PratosRecordDocumentEquality();

  @override
  bool equals(PratosRecord? e1, PratosRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.ingredientes == e2?.ingredientes &&
        e1?.preco == e2?.preco &&
        e1?.promocao == e2?.promocao &&
        e1?.imagem == e2?.imagem &&
        e1?.restauranteID == e2?.restauranteID;
  }

  @override
  int hash(PratosRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.ingredientes,
        e?.preco,
        e?.promocao,
        e?.imagem,
        e?.restauranteID
      ]);

  @override
  bool isValidKey(Object? o) => o is PratosRecord;
}
